// TODO: Build the UI along with appropriate tests for Dashboard Page @dheerajv09

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/theme/app_bar.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _text(String text, double fontSize, FontWeight fontWeight) {
    return Text(
      text,
      style: GoogleFonts.hind(
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 0.1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FindSkillAppBar(
        enableMenu: true,
        
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: MediaQuery.of(context).size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Hello ',
                    style: Theme.of(context).textTheme.bodyText1,
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'John Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 25.h, //200,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _text(
                          "Your profile has been \nviwed", 22, FontWeight.w500),
                      _text("250", 40, FontWeight.w600),
                      _text("times", 20, FontWeight.w500),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.3.h,
              ),
              SizedBox(
                height: 25.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 1.h,
                                ),
                                Icon(
                                  Icons.work_outlined,
                                  size: 5.h,
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Text(
                                  AppLocalizations.of(context)!
                                      .translate("electrician jobs"),
                                  //"Electrician \nJobs",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Text(
                                  "14",
                                  style: TextStyle(
                                      fontSize: 5.9.h,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Theme.of(context).colorScheme.primary,
                              Colors.lightBlueAccent,
                              Colors.blue.shade200,
                            ]),
                            //color: Theme.of(context).colorScheme.primary,//Colors.blue.withOpacity(0.6),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.message,
                                size: 5.h,
                                color: Colors.white,
                              ),
                              Text(
                                AppLocalizations.of(context)!
                                    .translate("refer and earn"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.3.h, //3,
              ),
              Container(
                height: 11.h, //100,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!
                        .translate("get more opportunities"),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
