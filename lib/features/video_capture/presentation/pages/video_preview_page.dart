import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewPage extends StatefulWidget {
  final String? outputVideoPath;

  const VideoPreviewPage(this.outputVideoPath);

  @override
  _VideoPreviewState createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreviewPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.file(File(widget.outputVideoPath!))
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("VideoPreviewPage"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: _controller.value.isInitialized
              ? VideoPlayer(_controller)
              : const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
        ),
      ),
    );
  }
}