import 'package:dartz/dartz.dart';
import 'package:find_skill/core/error/exceptions.dart';
import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/core/network/network_info.dart';
import 'package:find_skill/features/onboarding/data/datasources/language_list_local_data_source.dart';
import 'package:find_skill/features/onboarding/data/datasources/language_list_remote_data_source.dart';
import 'package:find_skill/features/onboarding/data/models/language_model.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:find_skill/features/onboarding/data/repositories/language_list_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'language_list_repo_impl_test.mocks.dart';

@GenerateMocks(
    [LanguagesListRemoteDataSource, LanguagesListLocalDataSource, NetworkInfo])
void main() {
  late LanguagesListRepositoryImpl repository;
  late MockLanguagesListRemoteDataSource mockRemoteDataSource;
  late MockLanguagesListLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockLanguagesListRemoteDataSource();
    mockLocalDataSource = MockLanguagesListLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = LanguagesListRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  group('getLanguagesList', () {
    const tLanguagesListModel = LanguagesListModel(
      language: [
        LanguageModel(
          code: "en",
          name: "english",
          local_name: "english",
        ),
      ],
    );

    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        when(mockRemoteDataSource.getLanguages())
            .thenAnswer((_) async => tLanguagesListModel);
        // act
        repository.getLanguagesList();
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.getLanguages())
              .thenAnswer((_) async => tLanguagesListModel);
          // act
          final result = await repository.getLanguagesList();
          // assert
          verify(mockRemoteDataSource.getLanguages());
          expect(result, equals(const Right(tLanguagesListModel)));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.getLanguages())
              .thenAnswer((_) async => tLanguagesListModel);
          // act
          await repository.getLanguagesList();
          // assert
          verify(mockRemoteDataSource.getLanguages());
          verify(mockLocalDataSource.cacheLanguages(tLanguagesListModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.getLanguages())
              .thenThrow(ServerException());
          // act
          final result = await repository.getLanguagesList();
          // assert
          verify(mockRemoteDataSource.getLanguages());
          verifyZeroInteractions(mockLocalDataSource);
          expect(result, equals(Left(ServerFailure())));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          when(mockLocalDataSource.getLastLanguages())
              .thenAnswer((_) async => tLanguagesListModel);
          // act
          final result = await repository.getLanguagesList();
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.getLastLanguages());
          expect(result, equals(const Right(tLanguagesListModel)));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.getLastLanguages())
              .thenThrow(CacheException());
          // act
          final result = await repository.getLanguagesList();
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.getLastLanguages());
          expect(result, equals(Left(CacheFailure())));
        },
      );
    });
  });
}
