// TODO: Build the UI along with appropriate tests for Refer and Earn Page @dheerajv09

import 'package:find_skill/core/localization/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:find_skill/features/onboarding/presentation/widgets/app_bar.dart';

class ReferAndEarn extends StatefulWidget {
  final VoidCallback openDrawer;
  const ReferAndEarn({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  _ReferAndEarnState createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: Key("hello"),
        appBar: FindSkillAppBar(
          enableMenu: true,
          onsSelectedItem: widget.openDrawer,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  AppLocalizations.of(context)!.translate("refer and earn"),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  height: 11.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryVariant,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.translate(
                          "invite your friends to join findskill & earn continously"),
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                SizedBox(
                  height: 26.h,
                  child: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                AppLocalizations.of(context)!
                                    .translate("your referral id"),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              SizedBox(
                                height: 5.7.h,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    //TODO: have to add original icon
                                    icon: const Icon(Icons.copy),
                                    label: Text(
                                      AppLocalizations.of(context)!
                                          .translate("invite"),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color.fromRGBO(82, 100, 109, 1),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(9.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 5.7.h,
                                width: 26.w,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(Icons.copy),
                                      label: Text(
                                        AppLocalizations.of(context)!
                                            .translate("copy"),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          const Color.fromRGBO(82, 100, 109, 1),
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9.0),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.black,
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!
                                    .translate("qr code"),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    height: 11.h, //100,

                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!
                                      .translate("you have earned"),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                          fontSize: 19,
                                          height: 2),
                                ),
                                Text(
                                  "Rs. 1000",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        fontSize: 35,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          key: const Key("redeem"),
                          flex: 2,
                          child: Material(
                            child: InkWell(
                              onTap: () {},
                              splashColor: Colors.white,
                              focusColor: Colors.white,
                              child: Container(
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .translate("redeem"),
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.white),
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
              ],
            ),
          ),
        ));
  }
}
