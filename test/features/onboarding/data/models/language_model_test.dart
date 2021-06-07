import 'dart:convert';
import 'package:find_skill/features/onboarding/data/models/language_model.dart';
import 'package:find_skill/features/onboarding/domain/entities/language.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tLanguageModel = LanguageModel(
    code: "en",
    name: "english",
    local_name: 'english',
  );

  group(
    'LanguageModel',
    () {
      test(
        'should be a subclass of Language entity',
        () async {
          // assert
          expect(tLanguageModel, isA<Language>());
        },
      );

      test(
        'should return a valid model when input Language JSON',
        () async {
          // arrange
          final Map<String, dynamic> jsonMap =
              json.decode(fixture('language.json')) as Map<String, dynamic>;
          // act
          final result = LanguageModel.fromJson(jsonMap);
          // assert
          expect(result, tLanguageModel);
        },
      );

      test(
        'should return a JSON map containing the proper data',
        () async {
          // act
          final result = tLanguageModel.toJson();
          // assert
          final expectedMap = {
            "code": "en",
            "name": "english",
            "local_name": 'english',
          };
          expect(result, expectedMap);
        },
      );
    },
  );
}
