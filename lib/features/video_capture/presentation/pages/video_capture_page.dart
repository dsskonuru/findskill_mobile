import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:quiver/async.dart';

import 'package:flutter_device_type/flutter_device_type.dart' as device_notch;
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/localization/localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../main.dart';

class VideoCapturePage extends StatefulWidget {
  @override
  _VideoCaptureState createState() {
    return _VideoCaptureState();
  }
}

class _VideoCaptureState extends State<VideoCapturePage>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  CameraController? controller;
  XFile? videoFile;
  VideoPlayerController? videoController;
  VoidCallback? videoPlayerListener;
  bool enableAudio = true;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;
  double _currentScale = 1.0;
  double _baseScale = 1.0;
  int _selectedCameraIndex = 0;
  AnimationController? animationController;
  bool isVideoRecording = false;

  int _start = 10;
  int _current = 10;

  int _counter = 30;
  late Timer _timer;
  bool a=true;

  // Counting pointers (number of user fingers on screen)
  int _pointers = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 400),
    );
    if (cameras.isNotEmpty) {
      onNewCameraSelected(cameras[0]);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(cameraController.description);
    }
  }

  @override
  Widget build(BuildContext context) {
    final CameraController? cameraController = controller;
    //final hasNotch = Device.get().hasNotch;
    return Scaffold(
      body: cameras.isEmpty
          ? Text(
              AppLocalizations.of(context)!.translate("no camera found")
                  as String,
              //'No camera found'
            )
          : SafeArea(
              child: Stack(
                fit: StackFit.expand,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _cameraPreviewWidget(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      //color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                            icon: const Icon(Icons.cancel),
                          ),
                          IconButton(
                            onPressed: () {},
                            color: Colors.white,
                            icon: const Icon(Icons.settings),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 15.h,
                      width: 100.w,
                      //color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 7.h,
                              //color: Colors.yellow,
                              child: Center(
                                child: Text(
                                  _counter.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: ElevatedButton(
                                onPressed: cameraController != null &&
                                        cameraController.value.isInitialized
                                    ? (cameraController.value.isRecordingVideo)
                                        ? onStopButtonPressed
                                        : onVideoRecordButtonPressed
                                    : null,
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(20),
                                  primary: Colors.white.withOpacity(
                                      0.5), //Colors.blue, // <-- Button color
                                ),
                                child: cameraController != null &&
                                        !cameraController.value.isRecordingVideo
                                    ? Container(
                                        width: 150,
                                        height: 150,
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                      )
                                    : Container(
                                        width: 50,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          //shape: BoxShape.rectangle,
                                        ),
                                      ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            _thumbnailWidget(),
                            /*Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _thumbnailWidget(),
                                const SizedBox(
                                  height: 0,
                                ),
                                /*const Text(
                                  "Upload",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),*/
                              ],
                            )*/
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: 500,
                  //   child: Container(
                  //     height: 100,
                  //     color: Colors.lightBlue.withOpacity(0.5),
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           IconButton(
                  //             icon: AnimatedIcon(
                  //               icon: AnimatedIcons.pause_play,
                  //               color: Colors.blue,
                  //               progress: animationController!,
                  //             ),
                  //             onPressed: () {
                  //               setState(
                  //                 () {
                  //                   if (cameraController != null &&
                  //                       cameraController.value.isInitialized &&
                  //                       cameraController
                  //                           .value.isRecordingVideo) {
                  //                     if (cameraController
                  //                         .value.isRecordingPaused) {
                  //                       animationController!.reverse();
                  //                       onResumeButtonPressed();
                  //                     } else {
                  //                       animationController!.forward();
                  //                       onPauseButtonPressed();
                  //                     }
                  //                   }
                  //                 },
                  //               );
                  //             },
                  //           ),
                  //           IconButton(
                  //             icon: cameraController != null &&
                  //                     !cameraController.value.isRecordingVideo
                  //                 ? const Icon(Icons.videocam)
                  //                 : const Icon(
                  //                     Icons.stop,
                  //                     color: Colors.red,
                  //                   ),
                  //             color: Colors.blue,
                  //             onPressed: cameraController != null &&
                  //                     cameraController.value.isInitialized
                  //                 ? (cameraController.value.isRecordingVideo)
                  //                     ? onStopButtonPressed
                  //                     : onVideoRecordButtonPressed
                  //                 : null,
                  //           ),
                  //           IconButton(
                  //             icon: const Icon(
                  //               Icons.cameraswitch_outlined,
                  //               color: Colors.blueGrey,
                  //             ),
                  //             color: Colors.red,
                  //             onPressed: () {
                  //               setState(
                  //                 () async {
                  //                   if (!(controller != null &&
                  //                       controller!.value.isRecordingVideo)) {
                  //                     if (cameras.isNotEmpty) {
                  //                       _selectedCameraIndex =
                  //                           (_selectedCameraIndex + 1) %
                  //                               cameras.length;
                  //                       Logger.root.shout(_selectedCameraIndex);
                  //                       await onNewCameraSelected(
                  //                           cameras[_selectedCameraIndex]);
                  //                     }
                  //                   }
                  //                 },
                  //               );
                  //             },
                  //           ),
                  //           _thumbnailWidget(),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
    );
  }

  void startTimer() {
    _timer = Timer.periodic( const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          sleep(const Duration(seconds: 1));
          timer.cancel();
          onStopButtonPressed();
        }
      });
    });
  }

  /// Display the preview from the camera (or a message if the preview is not available).
  Widget _cameraPreviewWidget() {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return Text(
        AppLocalizations.of(context)!.translate("tap a camera") as String,
        //'Tap a camera',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.w900,
        ),
      );
    } else {
      return Listener(
        onPointerDown: (_) => _pointers++,
        onPointerUp: (_) => _pointers--,
        child: CameraPreview(
          controller!,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onScaleStart: _handleScaleStart,
              onScaleUpdate: _handleScaleUpdate,
              onTapDown: (details) => onViewFinderTap(details, constraints),
            );
          }),
        ),
      );
    }
  }

  void _handleScaleStart(ScaleStartDetails details) {
    _baseScale = _currentScale;
  }

  Future<void> _handleScaleUpdate(ScaleUpdateDetails details) async {
    // When there are not exactly two fingers on screen don't scale
    if (controller == null || _pointers != 2) {
      return;
    }

    _currentScale = (_baseScale * details.scale)
        .clamp(_minAvailableZoom, _maxAvailableZoom);

    await controller!.setZoomLevel(_currentScale);
  }

  void onViewFinderTap(TapDownDetails details, BoxConstraints constraints) {
    if (controller == null) {
      return;
    }

    final CameraController cameraController = controller!;

    final offset = Offset(
      details.localPosition.dx / constraints.maxWidth,
      details.localPosition.dy / constraints.maxHeight,
    );
    cameraController.setExposurePoint(offset);
    cameraController.setFocusPoint(offset);
  }

  /// Display the thumbnail of the captured image or video.
  Widget _thumbnailWidget() {
    final VideoPlayerController? localVideoController = videoController;

    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (localVideoController == null)
            Container(
              width: 65,
            )
          else
            InkWell(
              onTap: () async {
                final File file = File(videoFile!.path);
                await context.router.navigate(VideoTrimmerRoute(file: file));
              },
              child: Container(
                //height: 100,
                //width: 65,
                //color: Colors.red,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      Expanded(
                        flex: 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.yellow,
                              border: Border.all(
                                color: const Color.fromRGBO(0, 163, 225, 1),
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: 65,
                              width: 65,
                                  child: VideoPlayer(localVideoController)),
                            ),
                          ),
                        ),
                      ),
                      
                       const Expanded(
                        flex: 1,
                        child: Text(
                          "Upload",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller!.dispose();
    }
    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.medium,
      enableAudio: enableAudio,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) setState(() {});
      if (cameraController.value.hasError) {
        log('Camera error ${cameraController.value.errorDescription}');
      }
    });

    try {
      await cameraController.initialize();
      await Future.wait([
        cameraController
            .getMaxZoomLevel()
            .then((value) => _maxAvailableZoom = value),
        cameraController
            .getMinZoomLevel()
            .then((value) => _minAvailableZoom = value),
      ]);
    } on CameraException catch (e) {
      Logger.root.severe(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  void onVideoRecordButtonPressed() {
    _counter = 30;
    startTimer();
    startVideoRecording().then((_) {
      if (mounted) setState(() {});
    });
  }

  void onStopButtonPressed() {
    _timer.cancel();
    
    stopVideoRecording().then((file) {
      if (mounted) setState(() {});
      if (file != null) {
        log('Video recorded to ${file.path}');
        videoFile = file;
        _startVideoPlayer();
      }
    });
  }

  void onPauseButtonPressed() {
    pauseVideoRecording().then((_) {
      if (mounted) setState(() {});
      log('Video recording paused');
    });
  }

  void onResumeButtonPressed() {
    resumeVideoRecording().then((_) {
      if (mounted) setState(() {});
      log('Video recording resumed');
    });
  }

  Future<void> startVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      log('Error: select a camera first.');
      return;
    }

    if (cameraController.value.isRecordingVideo) {
      // A recording is already started, do nothing.
      return;
    }

    try {
      await cameraController.startVideoRecording();
    } on CameraException catch (e) {
      Logger.root.severe(e);
      return;
    }
  }

  Future<XFile?> stopVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return null;
    }

    try {
      return cameraController.stopVideoRecording();
    } on CameraException catch (e) {
      Logger.root.severe(e);
      return null;
    }
  }

  Future<void> pauseVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return;
    }

    try {
      await cameraController.pauseVideoRecording();
    } on CameraException catch (e) {
      Logger.root.severe(e);
      rethrow;
    }
  }

  Future<void> resumeVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return;
    }

    try {
      await cameraController.resumeVideoRecording();
    } on CameraException catch (e) {
      Logger.root.severe(e);
      rethrow;
    }
  }

  Future<void> _startVideoPlayer() async {
    if (videoFile == null) {
      return;
    }

    final VideoPlayerController vController =
        VideoPlayerController.file(File(videoFile!.path));
    videoPlayerListener = () {
      if (videoController != null) {
        // Refreshing the state to update video player with the correct ratio.
        if (mounted) setState(() {});
        videoController!.removeListener(videoPlayerListener!);
      }
    };
    vController.addListener(videoPlayerListener!);
    await vController.setLooping(false);
    await vController.pause();
    await vController.initialize();
    await videoController?.dispose();
    if (mounted) {
      setState(
        () {
          videoController = vController;
        },
      );
    }
    await vController.play();
  }
}
