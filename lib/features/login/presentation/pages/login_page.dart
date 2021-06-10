import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
               Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
                child: Image.asset(
                  "assets/png/FindSkill-Logo.png",
                  fit: BoxFit.scaleDown,
                  height: 12.h,
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
