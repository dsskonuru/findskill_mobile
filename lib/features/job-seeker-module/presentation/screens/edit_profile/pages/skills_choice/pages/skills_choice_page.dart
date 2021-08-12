import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../../../../../core/error/failures.dart';
import '../../../../../../../../core/theme/app_bar.dart';
import '../../../../../../../../main.dart';
import '../../../../../../../onboarding/presentation/provider/language_provider.dart';
import '../../../../../../../registration/presentation/widgets/chips.dart';
import '../../../../../../data/models/skill.dart';
import '../../../../../../data/models/skill_category.dart';
import '../../../../../../data/repositories/skill_category_repository.dart';
import '../../../../../../data/repositories/skill_repository.dart';
import '../provider/skills_choice_provider.dart';

class SkillsChoicePage extends ConsumerWidget {
  const SkillsChoicePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return const Scaffold(
      appBar: FindSkillAppBar(),
      body: JobCategories(),
    );
  }
}

class JobCategories extends ConsumerWidget {
  const JobCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return FutureBuilder<Either<Failure, List<SkillCategory>>>(
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (!snapshot.hasData) {
          return Text(
            'Oops! Something went wrong. We are working on it.',
            style: Theme.of(context).textTheme.headline5,
          );
        }
        final Either<Failure, List<SkillCategory>>? skillCategoryRunner =
            snapshot.data;
        List<SkillCategory>? skillCategoriesList;
        skillCategoryRunner?.fold(
          (failure) =>
              Logger.root.severe("Unable to fetch Skill Category List"),
          (skillCategories) {
            skillCategoriesList = skillCategories;
          },
        );
        Logger.root
            .fine("Skill Categories List: ${skillCategoriesList.toString()}");

        return ListView.builder(
          itemBuilder: (context, key) {
            final SkillCategory skillCategory =
                skillCategoriesList!.elementAt(key);
            return ExpansionTile(
              title: Text(skillCategory.categoryName),
              children: [
                FutureBuilder<Either<Failure, List<Skill>>>(
                  builder: (context, snapshot) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      return const Center(
                          child: CircularProgressIndicator.adaptive());
                    } else if (!snapshot.hasData) {
                      return Text(
                        'Oops! Something went wrong. We are working on it.',
                        style: Theme.of(context).textTheme.headline5,
                      );
                    } else {
                      final Set<String> chips = {};
                      final Either<Failure, List<Skill>> skillsListRunner =
                          snapshot.data!;
                      skillsListRunner.fold(
                          (faillure) => Logger.root
                              .severe("Unable to fetch Skill Sub Categories"),
                          (skills) {
                        for (final skill in skills) {
                          chips.add(skill.name);
                        }
                      });
                      Logger.root.fine(chips);
                      return MultiSelectChip(
                        chips,
                        onSelectionChanged: (selectedChips) =>
                            watch(skillsProvider).selectedSkills =
                                selectedChips,
                        selectedTags:
                            watch(skillsProvider).selectedSkills,
                      );
                    }
                  },
                  future: watch(skillProvider).getSkill(
                    container.read(languageProvider).language.code,
                    skillCategory.id,
                  ),
                ),
              ],
            );
          },
          itemCount: skillCategoriesList!.length,
        );
        // return Text(skillCategoriesList.toString());
      },
      future: watch(skillCategoryProvider)
          .getSkillCategory(container.read(languageProvider).language.code),
    );
  }
}
