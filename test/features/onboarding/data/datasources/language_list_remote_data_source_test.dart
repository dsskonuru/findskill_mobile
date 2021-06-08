import 'dart:convert';

import 'package:find_skill/core/error/exceptions.dart';
import 'package:find_skill/core/services/services.dart';
import 'package:find_skill/features/onboarding/data/datasources/language_list_remote_data_source.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'language_list_remote_data_source_test.mocks.dart';

@GenerateMocks([RestClient])
void main() {
  late LanguagesListRemoteDataSource dataSource;
  late MockRestClient mockRestClient;

  setUp(() {
    mockRestClient = MockRestClient();
    dataSource = LanguagesListRemoteDataSource(client: mockRestClient);
  });

  void setUpMockRestClientSuccess() {
    when(mockRestClient.getLanguages()).thenAnswer(
      (_) async => Future.value(
        LanguagesListModel.fromJson(json.decode(
          fixture('languages_list.json'),
        ) as Map<String, dynamic>),
      ),
    );
  }

  void setUpMockRestClientFailure() {
    when(mockRestClient.getLanguages()).thenThrow(ServerException());
  }

  group('getLanguagesList', () {
    final tLanguagesListModel = LanguagesListModel.fromJson(
        json.decode(fixture('languages_list.json')) as Map<String, dynamic>);

    test(
      'should return LanguagesList when the request is successful',
      () async {
        // arrange
        setUpMockRestClientSuccess();
        // act
        final result = await dataSource.getLanguages();
        // assert
        expect(result, equals(tLanguagesListModel));
      },
    );

    test(
      'should throw a ServerException when the request unsuccessful',
      () async {
        // arrange
        setUpMockRestClientFailure();
        // act
        final call = dataSource.getLanguages;
        // assert
        expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
      },
    );
  });
}
