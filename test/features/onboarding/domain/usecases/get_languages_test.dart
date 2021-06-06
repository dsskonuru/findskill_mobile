import 'package:dartz/dartz.dart';
import 'package:find_skill/core/usecases/usecase.dart';
import 'package:find_skill/features/onboarding/data/models/language_model.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:find_skill/features/onboarding/domain/repositories/language_list_repo.dart';
import 'package:find_skill/features/onboarding/domain/usecases/get_languages.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_languages_test.mocks.dart';

@GenerateMocks([LanguagesListRepository])
void main() {
  late GetLanguages getLanguages;
  late MockLanguagesListRepository mockLanguagesListRepository;

  setUp(() {
    mockLanguagesListRepository = MockLanguagesListRepository();
    getLanguages = GetLanguages(mockLanguagesListRepository);
  });

  const tLanguagesList = LanguagesListModel(
    language: [
      LanguageModel(
        code: "123",
        local_name: "english",
        name: "English",
      )
    ],
  );

  test(
    'should get list of Languages from the repository',
    () async {
      // arrange
      when(mockLanguagesListRepository.getLanguagesList())
          .thenAnswer((_) async => const Right(tLanguagesList));
      // act
      final result = await getLanguages(NoParams());
      // assert
      expect(result, const Right(tLanguagesList));
      verify(mockLanguagesListRepository.getLanguagesList());
      verifyNoMoreInteractions(mockLanguagesListRepository);
    },
  );
}
