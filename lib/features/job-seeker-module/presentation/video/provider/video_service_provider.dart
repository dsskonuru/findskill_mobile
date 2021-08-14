import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../../core/providers/firebase_provider.dart';
import '../../../../../core/providers/user_actions_provider.dart';
import '../../../../../main.dart';

final videoServiceProvider = ChangeNotifierProvider<VideoServiceNotifier>(
    (ref) => VideoServiceNotifier());

class VideoServiceNotifier extends ChangeNotifier {
  File? _video;
  File? get video => _video;
  set video(File? video) {
    _video = video;
    Logger.root.fine(video!.absolute);
    notifyListeners();
  }

  String? _videoLink;
  String? get videoLink => _videoLink;
  set videoLink(String? videoLink) {
    _videoLink = videoLink;
    notifyListeners();
  }

  Future<void> uploadVideoFile() async {
    if (video != null) {
      final String uid = container.read(userActionsProvider).firebaseUser!.uid;
      final String fileName = 'univerified-videos/$uid-unverified.mp4';
      final UploadTask videoUploadTask =
          FirebaseStorage.instance.ref(fileName).putFile(video!);
      try {
        // Storage tasks function as a Delegating Future so we can await them.
        final TaskSnapshot snapshot = await videoUploadTask;
        Logger.root.finer('Uploaded ${snapshot.bytesTransferred} bytes.');
      } on FirebaseException catch (e) {
        // e.g, e.code == 'canceled'
        final String message =
            "FirebaseException during video upload: ${e.code}";
        container.read(crashlyticsProvider).log(message);
        Logger.root.severe(message);
        Logger.root.severe(videoUploadTask.snapshot);

        if (e.code == 'permission-denied') {
          Logger.root.fine(
              'User does not have permission to upload to this reference.');
        }
      }
    } else {
      Logger.root.severe("uploadVideoFile method was called when video = null");
    }
  }
}
