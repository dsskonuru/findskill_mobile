import 'package:findskill/core/localization/app_localization.dart';
import 'package:findskill/core/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // late VideoPlayerController _controller;
  @override
  void initState() {
    // if (container.read(videoServiceProvider).video != null) {
    //   _controller = VideoPlayerController.file(
    //       container.read(videoServiceProvider).video!)
    //     ..initialize().then(
    //       (_) {
    //         setState(() {});
    //         _controller.play();
    //       },
    //     );
    // }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.translate("Edit Profile"),
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 2.h),
              Container(
                height: 64.h,
                // child: AspectRatio(
                //   aspectRatio: _controller.value.aspectRatio,
                //   child: Stack(
                //     children: [
                //       ClipRRect(
                //         borderRadius: BorderRadius.circular(15),
                //         child: VideoPlayer(_controller),
                //       ),
                //       Align(
                //         child: InkWell(
                //           onTap: () {
                //             setState(() {
                //               _controller.value.isPlaying
                //                   ? _controller.pause()
                //                   : _controller.play();
                //             });
                //           },
                //           child: Container(
                //             height: 18.w,
                //             width: 18.w,
                //             decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               color: Colors.white.withOpacity(0.5),
                //             ),
                //             child: _controller.value.isPlaying
                //                 ? Icon(
                //                     Icons.pause_rounded,
                //                     color: Colors.white,
                //                     size: 10.w,
                //                   )
                //                 : Icon(
                //                     Icons.play_arrow_rounded,
                //                     color: Colors.white,
                //                     size: 10.w,
                //                   ),
                //           ),
                //         ),
                //       ),
                //       Align(
                //         alignment: Alignment.bottomCenter,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             ElevatedButton(
                //               style: ButtonStyle(
                //                 elevation:
                //                     MaterialStateProperty.all<double>(7.0),
                //                 shape: MaterialStateProperty.all<
                //                     RoundedRectangleBorder>(
                //                   RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(18.0),
                //                   ),
                //                 ),
                //                 backgroundColor:
                //                     MaterialStateProperty.all<Color>(
                //                         Colors.white),
                //               ),
                //               onPressed: () {},
                //               child: Text(
                //                 AppLocalizations.of(context)!.translate("Trim"),
                //                 style: Theme.of(context)
                //                     .textTheme
                //                     .caption!
                //                     .copyWith(color: Colors.black),
                //               ),
                //             ),
                //             SizedBox(width: 2.w),
                //             ElevatedButton(
                //               style: ButtonStyle(
                //                 elevation:
                //                     MaterialStateProperty.all<double>(7.0),
                //                 shape: MaterialStateProperty.all<
                //                     RoundedRectangleBorder>(
                //                   RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(18.0),
                //                   ),
                //                 ),
                //                 backgroundColor:
                //                     MaterialStateProperty.all<Color>(
                //                         Colors.redAccent),
                //               ),
                //               onPressed: () {},
                //               child: Text(
                //                 AppLocalizations.of(context)!
                //                     .translate("Remake Video"),
                //                 style: Theme.of(context)
                //                     .textTheme
                //                     .caption!
                //                     .copyWith(
                //                       color: Colors.white,
                //                     ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                color: Colors.amber,
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(7.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(smaltBlue),
                    ),
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)!
                          .translate("Record New Video"),
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(7.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(smaltBlue),
                    ),
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)!.translate("Trim Video"),
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Container(
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!
                            .translate("Contact Information"),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              size: 3.h, color: Colors.grey.shade300),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.translate("Skills"),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              size: 3.h, color: Colors.grey.shade300),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!
                            .translate("Job Preference"),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              size: 3.h, color: Colors.grey.shade300),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.translate("Photo ID"),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              size: 3.h, color: Colors.grey.shade300),
                        ),
                      )
                    ],
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
