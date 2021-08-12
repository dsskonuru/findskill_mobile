import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../../../core/localization/app_localization.dart';

class JobPreferencesPage extends StatefulWidget {
  // final VoidCallback? openDrawer;
  const JobPreferencesPage({Key? key}) : super(key: key);

  @override
  _JobPreferencesPageState createState() => _JobPreferencesPageState();
}

class _JobPreferencesPageState extends State<JobPreferencesPage> {
  final List<InterestedIn> _interstedDays = [
    InterestedIn(
      title: "Hourly",
      isSelected: false,
    ),
    InterestedIn(
      title: "Daily",
      isSelected: false,
    ),
    InterestedIn(
      title: "Weekly",
      isSelected: false,
    ),
    InterestedIn(
      title: "Monthly",
      isSelected: false,
    ),
  ];

  Widget _interestedJobs() {
    // TODO: can have multiplechoice or can select only single item??
    return GridView.count(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        crossAxisSpacing: 8,
        childAspectRatio: 100 / 65,
        crossAxisCount: 4,
        children: _interstedDays
            .map(
              // ignore: avoid_unnecessary_containers
              (InterestedIn interestedIn) => Container(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    gradient: interestedIn.isSelected
                        ? LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Colors.lightBlueAccent,
                              Colors.blue.shade200,
                              // Colors.white,
                              // Colors.white,
                            ],
                          )
                        : null,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (interestedIn.isSelected) {
                          interestedIn.isSelected = false;
                        } else {
                          interestedIn.isSelected = true;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(horizontal: 6)),
                    child: Text(
                      interestedIn.title,
                      style: TextStyle(
                        color: interestedIn.isSelected
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: FindSkillAppBar(
      //   enableMenu: true,
      //   onsSelectedItem: widget.openDrawer,
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Text(
                //AppLocalizations.of(context)!.translate("Scan your ID"),
                "Job Preference",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                //AppLocalizations.of(context)!.translate("Scan your ID"),
                "I am Interested in",
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 20,
                    ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                //AppLocalizations.of(context)!.translate("Scan your ID"),
                "Contract Type",
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 20,
                    ),
              ),
              SizedBox(
                height: 2.h,
              ),
              _interestedJobs(),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    //AppLocalizations.of(context)!.translate("Scan your ID"),
                    "Base",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 20,
                        ),
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Text(
                    //AppLocalizations.of(context)!.translate("Scan your ID"),
                    "Hourly",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Text(
                    //AppLocalizations.of(context)!.translate("Scan your ID"),
                    "Rate",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.5.h, top: 1.5.h),
                          child: Text(
                            AppLocalizations.of(context)!.translate("Min"),
                            // "Min",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        TextFormField(
                          key: const Key("Min"),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: Theme.of(context).textTheme.bodyText2,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                            hintText: '100 Rs',
                          ),
                          autocorrect: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.5.h, top: 1.5.h),
                          child: Text(
                            AppLocalizations.of(context)!.translate("Max"),
                            // "Max",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        TextFormField(
                          key: const Key("Max"),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: Theme.of(context).textTheme.bodyText2,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                            hintText: '500 Rs',
                          ),
                          autocorrect: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                //AppLocalizations.of(context)!.translate("Scan your ID"),
                "Based on your selection you will be earning:",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Text(
                //AppLocalizations.of(context)!.translate("Scan your ID"),
                "Rs 800 to 4,000 per day",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
              ),
              Text(
                //AppLocalizations.of(context)!.translate("Scan your ID"),
                "Rs 20,000 to 100,000 per month",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
              ),
              SizedBox(
                height: 3.h,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 7.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Theme.of(context).colorScheme.primary,
                          Colors.lightBlueAccent,
                          Colors.blue.shade200,
                        ]),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          // "Update",
                          AppLocalizations.of(context)!.translate("Update"),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InterestedIn {
  final String title;
  bool isSelected;

  InterestedIn({
    required this.title,
    required this.isSelected,
  });
}
