// TODO: Build the UI along with appropriate tests for Account Settings Page @dheerajv09

//import 'package:findskill/core/localization/app_localization.dart';
//import 'package:findskill/features/onboarding/presentation/widgets/app_bar.dart';
import 'package:findskill/core/theme/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountSettingsPage extends StatefulWidget {
  final VoidCallback? openDrawer;
  const AccountSettingsPage({
    Key? key,
    this.openDrawer,
  }) : super(key: key);

  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  bool _disableJobseekerProfileValue = false;
  bool _defaultProfile = false;
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
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 13.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          // AppLocalizations.of(context)!
                          //     .translate("Account Information"),
                          "Account Settings",
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
                            height: 64.6,
                            width: 70,
                            child: Text(
                              //AppLocalizations.of(context)!.translate("SAVE"),
                              "SAVE",
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
                Padding(
                  padding: EdgeInsets.only(bottom: 1.5.h, top: 1.h),
                  child: Text(
                    //AppLocalizations.of(context)!.translate("Account No"),
                    "Change Password",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 17,
                        ),
                  ),
                ),
                TextFormField(
                  key: const Key("Account No Key"),
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
                    hintText: 'New Password',
                  ),
                  autocorrect: false,
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                TextFormField(
                  key: const Key("Bank Name Key"),
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
                    hintText: 'Re-type New Password',
                  ),
                  autocorrect: false,
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 40.h,
                        //color: Colors.green,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Disable Jobseeker Profile",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        fontSize: 20,
                                      ),
                                ),
                                Transform.scale(
                                  scale: 1,
                                  child: CupertinoSwitch(
                                    value: _disableJobseekerProfileValue,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      setState(() {
                                        _disableJobseekerProfileValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              "this is for job seeker profile, who has the profile enabled by default,if he disables it, then his profile won't be visible in the search",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontSize: 14,
                                  ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Default Profile",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 20,
                                  ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jobseeker",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        fontSize: 17,
                                      ),
                                ),
                                Transform.scale(
                                  scale: 1,
                                  child: CupertinoSwitch(
                                    value: _defaultProfile,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      setState(() {
                                        _defaultProfile = value;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  "Employer",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 17,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                      "for Employer, this won>t be visible, until he joins as a jobseeker"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
