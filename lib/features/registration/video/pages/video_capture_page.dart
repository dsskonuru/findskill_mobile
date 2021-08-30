import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/router/router.gr.dart';
import '../../../../../main.dart';
import '../../../../core/progress_tracker/progress_tracker.dart';
import '../provider/video_service_provider.dart';


class VideoCapturePage extends StatefulWidget {
  @override
  _VideoCaptureState createState() {
    return _VideoCaptureState();
  }
}

class _VideoCaptureState extends State<VideoCapturePage>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  static const ProgressKey pKey = ProgressKey.videoCapture;

  final ImagePicker _picker = ImagePicker();
  CameraController? controller;

  VideoPlayerController? videoController;
  VoidCallback? videoPlayerListener;
  AnimationController? animationController;

  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;
  double _currentScale = 1.0;
  double _baseScale = 1.0;
  bool isVideoRecording = false;

  late Image _galleryImage;
  late Timer _timer;
  int _counter = 30;
  bool a = true;
  int _pointers = 0;

  @override
  void initState() {
    super.initState();
    saveProgress(pKey);
    WidgetsBinding.instance?.addObserver(this);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 400),
    );
    if (cameras.isNotEmpty) {
      onNewCameraSelected(cameras[1]);
    }
    _galleryImage = Image.asset(
      "assets/png/gallery.png",
      fit: BoxFit.scaleDown,
      height: 18.h,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_galleryImage.image, context);
  }

  @override
  void dispose() {
    videoController?.dispose();
    controller?.dispose();
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }
    if (state != AppLifecycleState.resumed) {
      cameraController.dispose();
    } else {
      onNewCameraSelected(cameras[1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final CameraController? cameraController = controller;
    return Consumer(
      builder: (context, watch, child) {
        return Scaffold(
          body: cameras.isEmpty
              ? Text(
                  AppLocalizations.of(context)!
                      .translate("No camera was found"),
                  style: Theme.of(context).textTheme.headline6,
                )
              : Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    _cameraWidget(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: const EdgeInsets.only(top: 18, left: 18),
                            onPressed: () => context.router.pop(),
                            color: Colors.white,
                            icon: const Icon(Icons.close),
                          ),
                          // IconButton(
                          //  //  TODO: Implement Settings
                          //   padding: const EdgeInsets.only(top: 18, right: 18),
                          //   onPressed: () {},
                          //   color: Colors.white,
                          //   icon: const Icon(Icons.settings),
                          // ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w, bottom: 2.h),
                        child: SizedBox(
                          height: 18.w,
                          width: 18.w,
                          child: Center(
                            child: Text(
                              "00:${_counter.toString()}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: SizedBox(
                          height: 18.w,
                          width: 18.w,
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
                              primary: Colors.white.withOpacity(0.5),
                            ),
                            child: cameraController != null &&
                                    !cameraController.value.isRecordingVideo
                                ? Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  )
                                : Container(
                                    width: 9.w,
                                    height: 9.w,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    if (!isVideoRecording)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12.w, bottom: 2.h),
                          child: SizedBox(
                            height: 18.w,
                            width: 18.w,
                            child: InkWell(
                              onTap: () async {
                                final XFile? videoX = await _picker.pickVideo(
                                    source: ImageSource.gallery);
                                final Directory appDirectory =
                                    await getApplicationDocumentsDirectory();
                                final String videoDirectory =
                                    '${appDirectory.path}/Videos';
                                await Directory(videoDirectory)
                                    .create(recursive: true);
                                final String filePath =
                                    '$videoDirectory/video_file.mp4';
                                File video = File(videoX!.path);
                                video = await video.rename(filePath);
                                container.read(videoServiceProvider).video =
                                    video;
                                await context.router.popAndPush(
                                  const VideoPreviewRoute(),
                                  // FindSkillRouter(
                                  //     pageKey: ProgressKey.videoPreview.index),
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 12.w,
                                    width: 12.w,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: _galleryImage,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      AppLocalizations.of(context)!
                                          .translate("Upload"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
        );
      },
    );
  }

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(
          () {
            if (_counter > 0) {
              _counter--;
            } else {
              timer.cancel();
              onStopButtonPressed();
            }
          },
        );
      },
    );
  }

  Widget _cameraWidget() {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return Text(
        AppLocalizations.of(context)!.translate("No camera was found"),
        style: Theme.of(context).textTheme.headline6,
      );
    } else {
      return Listener(
        onPointerDown: (_) => _pointers++,
        onPointerUp: (_) => _pointers--,
        child: (controller != null)
            ? CameraPreview(
                controller!,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onScaleStart: _handleScaleStart,
                    onScaleUpdate: _handleScaleUpdate,
                    onTapDown: (details) =>
                        onViewFinderTap(details, constraints),
                  );
                }),
              )
            : Container(),
      );
    }
  }

  void _handleScaleStart(ScaleStartDetails details) =>
      _baseScale = _currentScale;

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

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller!.dispose();
    }
    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) setState(() {});
      if (cameraController.value.hasError) {
        Logger.root
            .severe('Camera error ${cameraController.value.errorDescription}');
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

  Future<void> onStopButtonPressed() async {
    _timer.cancel();
    await stopVideoRecording();
    context.router.popAndPush(
      const VideoPreviewRoute(),
      // FindSkillRouter(pageKey: ProgressKey.videoPreview.index),
    );
  }

  Future<void> startVideoRecording() async {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      Logger.root.severe('Error: select a camera first.');
      return;
    }
    if (cameraController.value.isRecordingVideo) {
      return;
    }
    try {
      await cameraController.startVideoRecording();
    } on CameraException catch (e) {
      Logger.root.severe(e);
      return;
    }
  }

  Future<void> stopVideoRecording() async {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return;
    }
    try {
      final XFile videoX = await cameraController.stopVideoRecording();
      final Directory appDirectory = await getApplicationDocumentsDirectory();
      final String videoDirectory = '${appDirectory.path}/Videos';
      await Directory(videoDirectory).create(recursive: true);
      final String filePath = '$videoDirectory/video_file.mp4';
      File video = File(videoX.path);
      video = await video.rename(filePath);
      container.read(videoServiceProvider).video = video;
    } on CameraException catch (e) {
      Logger.root.severe(e);
    }
  }
}
