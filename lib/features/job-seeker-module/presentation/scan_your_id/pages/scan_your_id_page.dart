//import 'package:findskill/core/localization/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScanYourIdPage extends StatefulWidget {
  const ScanYourIdPage({Key? key}) : super(key: key);

  @override
  _ScanYourIdPageState createState() => _ScanYourIdPageState();
}

class _ScanYourIdPageState extends State<ScanYourIdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
              top: 3.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  //AppLocalizations.of(context)!.translate("Scan your ID"),
                  "Scan your ID",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "ID Type",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ExpansionTile(
                          title: const Text(
                            "Aadhar Card",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Theme.of(context).colorScheme.primary,
                                Colors.lightBlueAccent,
                              ]),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: const Icon(Icons.expand_more),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  //AppLocalizations.of(context)!.translate("Account No"),
                  "Font Picture",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 17,
                      ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  height: 25.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.camera,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  //AppLocalizations.of(context)!.translate("Account No"),
                  "Back Picture",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 17,
                      ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  height: 25.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.camera,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
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
                        child: const Center(
                          child: Text(
                            "Update",
                            style: TextStyle(
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
      ),
    );
  }
}
