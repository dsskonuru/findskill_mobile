import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../core/theme/theme_data.dart';
import '../../../../../../main.dart';
import '../providers/dashboard_provider.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    container.read(dashboardProvider).fetchProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Hello, ',
                  style: Theme.of(context).textTheme.headline6,
                  children: <TextSpan>[
                    TextSpan(
                      text: watch(dashboardProvider).firstname,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(right: 1.w),
                        child: Column(
                          children: [
                            Container(
                              height: 46.h,
                              decoration: const BoxDecoration(
                                // TODO: Use the thumbnail image
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: const BorderRadius.vertical(
                                        bottom: Radius.circular(9),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text:
                                                "${watch(dashboardProvider).firstname}\n",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: watch(dashboardProvider)
                                                    .city,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 1.h),
                                        Container(
                                          width: double.maxFinite,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(9),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                watch(dashboardProvider)
                                                    .phoneNumber!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .overline!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                width: double.maxFinite,
                                height: 15.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(9)),
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Your profile has \n',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: watch(dashboardProvider)
                                            .profileViews,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nviews',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 0.5.h),
                              child: Container(
                                height: 6.h,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.lightGreen,
                                    Colors.green
                                  ]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // TODO: Implement share on WhatsApp
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "assets/png/whatsapp-icon.png",
                                        height: 5.h,
                                      ),
                                      Text(
                                        "Share your\nProfile",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.5.h),
                              child: Container(
                                height: 6.h,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // TODO: Implement invite your Friends
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Invite your\nFriends",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.5.h),
                              child: Container(
                                width: double.maxFinite,
                                height: 32.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [vandylBlue, scubaBlue],
                                      begin: const FractionalOffset(0.0, 0.0),
                                      end: const FractionalOffset(0.5, 0.0),
                                      stops: const [0.0, 1.0]),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(9)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.message_outlined,
                                        size: 7.h,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 2.h),
                                      Text(
                                        "REFER\nAND EARN",
                                        textAlign: TextAlign.left,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0.5.h),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                height: 15.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(9)),
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Your profile has \n',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: watch(dashboardProvider)
                                            .profileSaves,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nsaves',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
