// TODO: Build the UI along with appropriate tests for Refer and Earn Page @dheerajv09

import 'package:findskill/core/localization/app_localization.dart';
import 'package:findskill/core/theme/raised_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReferAndEarnPage extends StatefulWidget {
  const ReferAndEarnPage({
    Key? key,
  }) : super(key: key);

  @override
  _ReferAndEarnPageState createState() => _ReferAndEarnPageState();
}

class _ReferAndEarnPageState extends State<ReferAndEarnPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4.h),
            Text(
              AppLocalizations.of(context)!.translate("Refer and Earn"),
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 2.h),
            Text(
              AppLocalizations.of(context)!.translate(
                  "Invite your friends to join FindSkill and earn continously. You earn for every new opportunity your friend gets through FindSkill"),
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 2.h),
            Container(
                width: double.maxFinite,
                height: 18.h,
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!
                          .translate("Your Referral URL"),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      AppLocalizations.of(context)!
                          .translate("https://findskill.world/12345"),
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GradientButton(
                          height: 5.h,
                          width: 36.w,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 12.0,
                              ),
                              Text(
                                AppLocalizations.of(context)!
                                    .translate("Invite"),
                                style: Theme.of(context).textTheme.button,
                              ),
                            ],
                          ),
                        ),
                        GradientButton(
                          height: 5.h,
                          width: 36.w,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.copy,
                                color: Colors.white,
                                size: 12.0,
                              ),
                              Text(
                                AppLocalizations.of(context)!.translate("Copy"),
                                style: Theme.of(context).textTheme.button,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryVariant,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.translate("Pending"),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          "25",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryVariant,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.translate("Joined"),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          "10",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryVariant,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.translate("Earned"),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          "Rs. 1000",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
