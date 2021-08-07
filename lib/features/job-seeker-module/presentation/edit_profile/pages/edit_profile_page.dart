// TODO: Build the UI along with appropriate tests for Profile Page @dheerajv09

import 'package:findskill/features/job-seeker-module/presentation/job_preferences/pages/job_preferences_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/theme/app_bar.dart';
import '../widgets/custom_slider.dart';

class EditProfilePage extends StatefulWidget {
  final VoidCallback openDrawer;
  const EditProfilePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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

  Widget _slider() {
    return SizedBox(
      height: 6.h,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomSlider(
            constraints: constraints,
          );
        },
      ),
    );
  }

  Widget _videoEditor() {
    return SizedBox(
      //color: Colors.red,
      height: 300,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 7.36.h,
                    width: 31.84.w,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        alignment: Alignment.center,
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!
                            .translate("record new video"),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 7.36.h,
                    width: 31.84.w,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        alignment: Alignment.center,
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.translate("trim video"),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 7.36.h,
                    width: 31.84.w,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        alignment: Alignment.center,
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.translate("delete video"),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _interestedJobs() {
    // TODO: can have multiplechoice or can select only single item
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
                      color: Theme.of(context).colorScheme.secondary,
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
      appBar: FindSkillAppBar(
        enableMenu: true,
        onsSelectedItem: widget.openDrawer,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          AppLocalizations.of(context)!
                              .translate("edit profile"),
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            //color: Colors.blue,
                            height: 64.6,
                            width: 70,
                            child: Text(
                              AppLocalizations.of(context)!.translate("save"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.h,
                    left: 5.w,
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        maxRadius: 35,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppLocalizations.of(context)!.translate("john doe"),
                        style:
                            Theme.of(context).textTheme.headline5!.copyWith(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                Text(
                  AppLocalizations.of(context)!.translate("your video"),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                _videoEditor(),
                SizedBox(
                  height: 4.5.h,
                ),
                Padding(
                  padding: EdgeInsets.all(0.6.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("mobile number"),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: Theme.of(context).textTheme.bodyText2,
                  keyboardType: TextInputType.phone,
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
                    hintText: '+919876543210',
                  ),
                  autocorrect: false,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 0.6.h, top: 3.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("location"),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  readOnly: true,
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
                    hintText: 'Mumbai',
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!
                          .translate("what jobs are you interested in?"),
                      style: TextStyle(fontSize: 12.5.sp),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      width: 4.w,
                      height: 2.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage('assets/png/asset1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 7.5.h,
                          width: 14.6.w,
                          child: FloatingActionButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Image.asset("assets/png/all_jobs_icon.png"),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          AppLocalizations.of(context)!.translate("all jobs"),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 7.5.h,
                          width: 14.6.w,
                          child: FloatingActionButton(
                            onPressed: () {},
                            elevation: 0,
                            backgroundColor: Colors.white,
                            shape: CircleBorder(
                              side: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryVariant),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          AppLocalizations.of(context)!.translate("choose job"),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 0.6.h, top: 3.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("experience"),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                _experieceTextField(),
                Padding(
                  padding: EdgeInsets.only(bottom: 0.6.h, top: 3.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("interested in"),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                _interestedJobs(),
                Padding(
                  padding: EdgeInsets.only(bottom: 0.h, top: 4.5.h),
                  child: RichText(
                    text: TextSpan(
                      text: 'Base  ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Daily ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(text: ' Rate!'),
                      ],
                    ),
                  ),
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
                              AppLocalizations.of(context)!.translate("min"),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          TextFormField(
                            readOnly: true,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                              AppLocalizations.of(context)!.translate("max"),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          TextFormField(
                            readOnly: true,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                Padding(
                  padding: EdgeInsets.only(bottom: 0.7.h, top: 4.5.h),
                  child: Text(
                    AppLocalizations.of(context)!
                        .translate("minimum distance willing to travel"),
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                _slider(),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _experieceTextField() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
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
              hintText: 'Years',
            ),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Expanded(
          child: TextFormField(
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
              hintText: 'Months',
            ),
            autocorrect: false,
          ),
        ),
      ],
    );
  }
}
