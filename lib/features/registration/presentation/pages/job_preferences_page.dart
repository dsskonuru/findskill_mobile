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
import '../provider/job_preferences_provider.dart';
import '../widgets/job_preference_chips.dart';

class JobPreferencesPage extends StatefulWidget {
  const JobPreferencesPage({Key? key}) : super(key: key);

  @override
  _JobPreferencesPageState createState() => _JobPreferencesPageState();
}

class _JobPreferencesPageState extends State<JobPreferencesPage> {
  static const ProgressKey pKey = ProgressKey.jobPreferences;

  @override
  void initState() {
    saveProgress(pKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FindSkillAppBar(),
      body: JobseekerPreferencesScreen(isPage: true),
    );
  }
}

class JobseekerPreferencesScreen extends ConsumerWidget {
  const JobseekerPreferencesScreen({Key? key, required this.isPage})
      : super(key: key);

  final bool isPage;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final String buttonText = isPage ? "Next" : "Update";
    return FutureBuilder<bool>(
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!) {
          final List<String> contractTypes =
              watch(jobseekerPreferencesProvider).contractTypes!;
          final List<String> jobTypes =
              watch(jobseekerPreferencesProvider).jobTypes!;
          return Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.translate("Job Preference"),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    AppLocalizations.of(context)!
                        .translate("I am Interested in"),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(height: 1.h),
                  PreferenceSelectChip(
                      preferences: jobTypes, type: Preference.job),
                  SizedBox(height: 2.h),
                  Text(
                    AppLocalizations.of(context)!.translate("Contract Type"),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(height: 1.h),
                  PreferenceSelectChip(
                      preferences: contractTypes, type: Preference.contract),
                  SizedBox(height: 2.h),
                  RichText(
                    text: TextSpan(
                      text: AppLocalizations.of(context)!.translate("Base "),
                      style: Theme.of(context).textTheme.subtitle2,
                      children: <TextSpan>[
                        TextSpan(
                          text: AppLocalizations.of(context)!
                              .translate("Hourly "),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: vandylBlue),
                        ),
                        TextSpan(
                            text:
                                AppLocalizations.of(context)!.translate("Rate"),
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: 0.5.h, top: 1.5.h),
                              child: Text(
                                AppLocalizations.of(context)!.translate("Min"),
                                style: Theme.of(context)
                                    .textTheme
                                    .overline!
                                    .copyWith(color: Colors.grey.shade500),
                              ),
                            ),
                            TextFormField(
                              onChanged: (value) =>
                                  watch(jobseekerPreferencesProvider)
                                      .minimumRate = int.tryParse(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10.0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                hintText: '100 Rs',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.grey.shade500),
                              ),
                              validator: (value) {
                                if (value != null &&
                                    num.tryParse(value) != null) {
                                  return null;
                                } else {
                                  return "Enter a valid input";
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: 0.5.h, top: 1.5.h),
                              child: Text(
                                AppLocalizations.of(context)!.translate("Max"),
                                style: Theme.of(context)
                                    .textTheme
                                    .overline!
                                    .copyWith(color: Colors.grey.shade500),
                              ),
                            ),
                            TextFormField(
                              onChanged: (value) =>
                                  watch(jobseekerPreferencesProvider)
                                      .maximumRate = int.tryParse(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10.0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade300),
                                ),
                                hintText: '500 Rs',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.grey.shade500),
                              ),
                              validator: (value) {
                                if (value != null &&
                                    num.tryParse(value) != null) {
                                  return null;
                                } else {
                                  return "Enter a valid input";
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    AppLocalizations.of(context)!.translate(
                        "Based on your selection you will be earning:"),
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(color: vandylBlue),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    AppLocalizations.of(context)!.translate(
                        "Rs ${8 * (watch(jobseekerPreferencesProvider).minimumRate ?? 100)} to ${8 * (watch(jobseekerPreferencesProvider).maximumRate ?? 500)} per day"),
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(color: Colors.grey),
                  ),
                  Text(
                    AppLocalizations.of(context)!.translate(
                        "Rs ${200 * (watch(jobseekerPreferencesProvider).minimumRate ?? 100)} to ${200 * (watch(jobseekerPreferencesProvider).maximumRate ?? 500)} per month"),
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 4.h),
                  Center(
                    child: GradientButton(
                      onPressed: () async {
                        final bool response =
                            await watch(jobseekerPreferencesProvider).submit();
                        if (response) {
                          await context.router.push(const ScanYourIdRoute());
                        }
                      },
                      child: Text(
                        AppLocalizations.of(context)!.translate(buttonText),
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
      },
      future: watch(jobseekerPreferencesProvider).fetchJobTypes(),
    );
  }
}
