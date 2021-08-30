import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/progress_tracker/progress_tracker.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/app_bar.dart';
import '../../../../core/theme/raised_gradient_button.dart';
import '../../../../core/theme/theme_data.dart';
import '../../../../main.dart';
import '../../../job-seeker-module/data/models/jobseeker_module.dart';
import '../provider/skills_choice_provider.dart';
import '../widgets/skill_chips.dart';

class SkillsChoicePage extends StatefulWidget {
  const SkillsChoicePage({Key? key}) : super(key: key);

  @override
  State<SkillsChoicePage> createState() => _SkillsChoicePageState();
}

class _SkillsChoicePageState extends State<SkillsChoicePage> {
  static const ProgressKey pKey = ProgressKey.registration;

  @override
  void initState() {
    saveProgress(pKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FindSkillAppBar(),
      body: SkillsChoiceScreen(isPage: true),
    );
  }
}

class SkillsChoiceScreen extends ConsumerWidget {
  const SkillsChoiceScreen({Key? key, required this.isPage}) : super(key: key);

  final bool isPage;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final String buttonText = isPage ? "Next" : "Update";
          final List<String> skillCategories =
              watch(skillsChoiceProvider).skillsMap.keys.toList();
          final Map<String, List<Skill>> skillsMap =
              watch(skillsChoiceProvider).skillsMap;
          return Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!
                      .translate("Choose the skills you have"),
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  AppLocalizations.of(context)!.translate("Upto 3 Skills"),
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 2.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: skillCategories.length,
                    itemBuilder: (context, index) {
                      final String skillCategory = skillCategories[index];
                      final List<Skill> skills = skillsMap[skillCategory]!;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            skills.first.category.categoryName,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: vandylBlue),
                          ),
                          const SizedBox(height: 10.0),
                          SkillSelectChip(skills: skills),
                          SizedBox(height: 2.h),
                        ],
                      );
                    },
                  ),
                ),
                GradientButton(
                  // TODO: Handle else
                  onPressed: () async {
                    final bool response =
                        await watch(skillsChoiceProvider).submit();
                    if (response) {
                      await context.router.push(const JobPreferencesRoute());
                    }
                  },
                  child: Text(
                    AppLocalizations.of(context)!.translate(buttonText),
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      },
      future: container.read(skillsChoiceProvider).fetchSkillsMap(),
    );
  }
}
