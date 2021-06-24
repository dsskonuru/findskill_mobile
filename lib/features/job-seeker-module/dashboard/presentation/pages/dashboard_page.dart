// TODO: Build the UI along with appropriate tests for Dashboard Page @dheerajv09

import 'package:find_skill/features/onboarding/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashBoardPage extends StatefulWidget {
  final VoidCallback openDrawer;
  const DashBoardPage({Key? key, required this.openDrawer}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
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
      appBar: FindSkillAppBar(),
      body: SafeArea(
        child: Expanded(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _text("Your profile has been \nviwed", 22,
                            FontWeight.w500),
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
                  height: 24.h,
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
                                  const Text(
                                    "Electrician \nJobs",
                                    style: TextStyle(
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
                              gradient:   LinearGradient(colors: [
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
                              children:  [
                                Icon(
                                  Icons.message,
                                  size: 5.h,
                                  color: Colors.white,
                                ),
                                Text("Refer and Earn"),
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
                  child: const Center(
                    child: Text(
                      "Get More opportunities",
                      style: TextStyle(
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
      ),
    );
  }
}
