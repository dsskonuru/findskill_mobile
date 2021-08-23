//import 'package:findskill/core/localization/app_localization.dart';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:findskill/core/localization/app_localization.dart';
import 'package:findskill/core/progress_tracker/progress_tracker.dart';
import 'package:findskill/core/theme/app_bar.dart';
import 'package:findskill/core/theme/raised_gradient_button.dart';
import 'package:findskill/core/theme/theme_data.dart';
import 'package:findskill/features/registration/presentation/provider/scan_your_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/router/router.gr.dart';

class ScanYourIdPage extends StatefulWidget {
  const ScanYourIdPage({Key? key}) : super(key: key);

  @override
  _ScanYourIdPageState createState() => _ScanYourIdPageState();
}

class _ScanYourIdPageState extends State<ScanYourIdPage> {
  static const ProgressKey pKey = ProgressKey.scanYourId;

  @override
  void initState() {
    saveProgress(pKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FindSkillAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ScanYourIdScreen(isPage: true),
        ),
      ),
    );
  }
}

class ScanYourIdScreen extends ConsumerWidget {
  const ScanYourIdScreen({
    Key? key,
    required this.isPage,
  }) : super(key: key);

  final bool isPage;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final String buttonText = isPage ? "Submit" : "Update";
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.translate("Scan your ID"),
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  "ID Type",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 30.w,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10.0),
                      underline: const SizedBox(),
                      isExpanded: true,
                      icon: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [scubaBlue, vandylBlue],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(0.5, 0.0),
                                stops: const [0.0, 1.0]),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Icon(Icons.expand_more,
                              color: Colors.white)),
                      focusColor: Colors.white,
                      value: watch(scanYourIdProvider).idType,
                      iconEnabledColor: Colors.black,
                      items: watch(scanYourIdProvider)
                          .idTypesList
                          .map<DropdownMenuItem<String>>(
                        (idType) {
                          return DropdownMenuItem<String>(
                            value: idType,
                            child: Text(
                              idType,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.grey),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (String? idType) =>
                          watch(scanYourIdProvider).idType = idType,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Text(
            AppLocalizations.of(context)!.translate("Front Picture"),
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 1.h),
          InkWell(
            onTap: () async {
              final String? imagePath =
                  await watch(scanYourIdProvider).getImage();
              watch(scanYourIdProvider).frontPicture = File(imagePath!);
            },
            child: Container(
              height: 25.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: watch(scanYourIdProvider).frontPicture == null
                    ? const Icon(Icons.camera_alt_rounded)
                    : Image.file(watch(scanYourIdProvider).frontPicture!),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            AppLocalizations.of(context)!.translate("Back Picture"),
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 1.h),
          InkWell(
            onTap: () async {
              final String? imagePath =
                  await watch(scanYourIdProvider).getImage();
              watch(scanYourIdProvider).backPicture = File(imagePath!);
            },
            child: Container(
              height: 25.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: watch(scanYourIdProvider).backPicture == null
                    ? const Icon(Icons.camera_alt_rounded)
                    : Image.file(watch(scanYourIdProvider).backPicture!),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Center(
            child: GradientButton(
              onPressed: () async {
                // await watch(scanYourIdProvider).submit();
                if (watch(scanYourIdProvider).idType != null &&
                    watch(scanYourIdProvider).frontPicture != null &&
                    watch(scanYourIdProvider).backPicture != null) {
                  context.router.push(const JobseekerRoute());
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
    );
  }
}
