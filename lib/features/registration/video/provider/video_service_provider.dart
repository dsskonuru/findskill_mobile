import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/providers/user_actions_provider.dart';
import '../../../../../main.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../../../core/services/job_seeker_services.dart';

const String cachedLocalVideoURL = 'CACHED_LOCAL_VIDEO_URL';
const String cachedStorageVideoURL = 'CACHED_STORAGE_VIDEO_URL';

final videoServiceProvider =
    ChangeNotifierProvider<VideoServiceNotifier>((ref) {
  // TODO: Check the cache for exsisting file and load it
  final videoService = VideoServiceNotifier();

  ref.onDispose(() {
    // TODO: Save the video path
  });
  return videoService;
});

class VideoServiceNotifier extends ChangeNotifier {
  final SharedPreferences sharedPreferences =
      container.read(cacheProvider).sharedPreferences!;

  File? _video;
  File? get video => _video;
  set video(File? video) {
    _video = video;
    if (video != null) {
      sharedPreferences.setString(
        cachedLocalVideoURL,
        video.absolute.path,
      );
      Logger.root.fine("The video file is saved at ${video.absolute.path}");
    }
    notifyListeners();
  }

  String? _videoLink;
  String? get videoLink => _videoLink;
  set videoLink(String? videoLink) {
    _videoLink = videoLink;
    if (videoLink != null) {
      sharedPreferences.setString(
        cachedLocalVideoURL,
        videoLink,
      );
      Logger.root.fine("The video file is stored at $videoLink");
    }
    notifyListeners();
  }

  Future<bool> uploadVideoFile({bool isUpdate = false}) async {
    if (video != null) {
      final String uid = container.read(userActionsProvider).firebaseUser!.uid;
      final String fileName = 'univerified-videos/$uid-unverified.mp4';
      final UploadTask videoUploadTask =
          FirebaseStorage.instance.ref(fileName).putFile(video!);
      try {
        final TaskSnapshot snapshot = await videoUploadTask;
        Logger.root.finer('Uploaded ${snapshot.bytesTransferred} bytes.');
        videoLink = await snapshot.ref.getDownloadURL();
        if (isUpdate) {
          container.read(jobseekerClientProvider).updateVideo(
                "Token ${container.read(userActionsProvider).loginResponse!.token}",
                videoLink!,
              );
        } else {
          container.read(jobseekerClientProvider).createVideo(
                "Token ${container.read(userActionsProvider).loginResponse!.token}",
                videoLink!,
              );
        }

        return true;
      } on FirebaseException catch (e) {
        Logger.root.severe(videoUploadTask.snapshot);
        Logger.root.severe(e.message);
        return false;
      }
    } else {
      Logger.root.severe("uploadVideoFile method was called when video = null");
      return false;
    }
  }
}
