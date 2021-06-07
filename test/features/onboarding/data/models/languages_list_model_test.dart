import 'dart:convert';
import 'package:find_skill/features/onboarding/data/models/language_model.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:find_skill/features/onboarding/domain/entities/languages_list.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tLanguagesListModel = LanguagesListModel(
    language: [
      LanguageModel(
        code: "en",
        name: "english",
        local_name: 'english',
      ),
      LanguageModel(
        code: "en-us",
        name: "english",
        local_name: 'english',
      ),
      LanguageModel(
        code: "it",
        name: "italian",
        local_name: 'italiana',
      ),
      LanguageModel(
        code: "hi",
        name: "hindi",
        local_name: "हिंदी",
      ),
    ],
  );

  group(
    'LanguagesListModel',
    () {
      test(
        'should be a subclass of LanguageList entity',
        () async {
          // assert
          expect(tLanguagesListModel, isA<LanguagesList>());
        },
      );

      test(
        'should return a valid model when input LanguagesList JSON',
        () async {
          // arrange
          final Map<String, dynamic> jsonMap = json
              .decode(fixture('languages_list.json')) as Map<String, dynamic>;
          // act
          final result = LanguagesListModel.fromJson(jsonMap);
          // assert
          expect(result, tLanguagesListModel);
        },
      );

      test(
        'should return a JSON map containing the proper data',
        () async {
          // act
          final result = tLanguagesListModel.toJson();
          // assert
          final expectedMap = {
            "language": [
              {"code": "en", "name": "english", "local_name": "english"},
              {"code": "en-us", "name": "english", "local_name": "english"},
              {"code": "it", "name": "italian", "local_name": "italiana"},
              {"code": "hi", "name": "hindi", "local_name": "हिंदी"}
            ]
          };
          expect(result, expectedMap);
        },
      );
    },
  );
}
