// TODO: Build the UI along with appropriate tests for Account Settings Page @dheerajv09

import 'package:find_skill/core/localization/app_localization.dart';
import 'package:find_skill/features/onboarding/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountSettingsPage extends StatefulWidget {
  final VoidCallback openDrawer;
  const AccountSettingsPage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FindSkillAppBar(
        enableMenu: true,
        onsSelectedItem: widget.openDrawer,
      ),
      body: SafeArea(
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
                        AppLocalizations.of(context)!
                            .translate("account information"),
                        style: Theme.of(context).textTheme.headline5!.copyWith(
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
                            AppLocalizations.of(context)!.translate("save"),
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
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
              Container(
                height: 12.h,
                padding: EdgeInsets.symmetric(horizontal: 2.9.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.translate(
                        "enter your bank account information to redeem/transfer your earnings."),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 0.6.h, top: 5.h),
                child: Text(
                  "Account No",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 17,
                      ),
                ),
              ),
              TextFormField(
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
                  hintText: 'Account No',
                ),
                autocorrect: false,
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 0.6.h),
                child: Text(
                  AppLocalizations.of(context)!.translate("bank name"),
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 17,
                      ),
                ),
              ),
              TextFormField(
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
                  hintText: 'Bank Name',
                ),
                autocorrect: false,
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 0.6.h),
                child: Text(
                  AppLocalizations.of(context)!.translate("account name"),
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 17,
                      ),
                ),
              ),
              TextFormField(
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
                  hintText: 'Account Name',
                ),
                autocorrect: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
