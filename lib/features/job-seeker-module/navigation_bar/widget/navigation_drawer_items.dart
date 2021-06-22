import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavigationDrawerItemWidget extends StatelessWidget {
  final String title;
  const NavigationDrawerItemWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
             Divider(
              height: 4.h,
              thickness: 1.5,
              endIndent: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
