// Mocks generated by Mockito 5.0.9 from annotations
// in find_skill/test/features/onboarding/data/repositories/language_list_repo_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:find_skill/core/network/network_info.dart' as _i6;
import 'package:find_skill/features/onboarding/data/datasources/language_list_local_data_source.dart'
    as _i5;
import 'package:find_skill/features/onboarding/data/datasources/language_list_remote_data_source.dart'
    as _i3;
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeLanguagesListModel extends _i1.Fake
    implements _i2.LanguagesListModel {}

/// A class which mocks [LanguagesListRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLanguagesListRemoteDataSource extends _i1.Mock
    implements _i3.LanguagesListRemoteDataSource {
  MockLanguagesListRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.LanguagesListModel> getLanguages() => (super.noSuchMethod(
          Invocation.method(#getLanguages, []),
          returnValue:
              Future<_i2.LanguagesListModel>.value(_FakeLanguagesListModel()))
      as _i4.Future<_i2.LanguagesListModel>);
}

/// A class which mocks [LanguagesListLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLanguagesListLocalDataSource extends _i1.Mock
    implements _i5.LanguagesListLocalDataSource {
  MockLanguagesListLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.LanguagesListModel> getLastLanguages() => (super.noSuchMethod(
          Invocation.method(#getLastLanguages, []),
          returnValue:
              Future<_i2.LanguagesListModel>.value(_FakeLanguagesListModel()))
      as _i4.Future<_i2.LanguagesListModel>);
  @override
  _i4.Future<void> cacheLanguages(_i2.LanguagesListModel? triviaToCache) =>
      (super.noSuchMethod(Invocation.method(#cacheLanguages, [triviaToCache]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i4.Future<void>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i6.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}
