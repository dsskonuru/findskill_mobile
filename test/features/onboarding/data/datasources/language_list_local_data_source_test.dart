import 'dart:convert';

import 'package:find_skill/core/error/exceptions.dart';
import 'package:find_skill/features/onboarding/data/datasources/language_list_local_data_source.dart';
import 'package:find_skill/features/onboarding/data/models/language_model.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'language_list_local_data_source_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late LanguagesListLocalDataSourceImpl dataSource;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = LanguagesListLocalDataSourceImpl(
      sharedPreferences: mockSharedPreferences,
    );
  });

  group('getLastLanguages', () {
    final tLanguagesListModel = LanguagesListModel.fromJson(
        json.decode(fixture('languages_list.json')) as Map<String, dynamic>);

    test(
      'should return LanguagesListModel from SharedPreferences when there is one in the cache',
      () async {
        // arrange
        when(mockSharedPreferences.getString(any))
            .thenReturn(fixture('languages_list.json'));
        // act
        final result = await dataSource.getLastLanguages();
        // assert
        verify(mockSharedPreferences.getString(cachedLanguagesList));
        expect(result, equals(tLanguagesListModel));
      },
    );

    test(
      'should throw a CacheExeption when there is not a cached value',
      () async {
        // arrange
        when(mockSharedPreferences.getString(any)).thenReturn(null);
        // act
        final call = dataSource.getLastLanguages;
        // assert
        expect(() => call(), throwsA(const TypeMatcher<CacheException>()));
      },
    );
  });

  group(
    'cacheLanguages',
    () {
      const tLanguagesListModel = LanguagesListModel(language: [
        LanguageModel(
          code: "123",
          name: "English",
          local_name: "english",
        )
      ]);

      test(
        'should call SharedPreferences to cache the data',
        () async {
          //arrange
          when(mockSharedPreferences.setString(any, any))
              .thenAnswer((_) => Future.value(true));
          // act
          dataSource.cacheLanguages(tLanguagesListModel);
          // assert
          final expectedJsonString = json.encode(tLanguagesListModel.toJson());
          verify(
            mockSharedPreferences.setString(
              cachedLanguagesList,
              expectedJsonString,
            ),
          );
        },
      );
    },
  );
}
