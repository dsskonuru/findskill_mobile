import 'dart:io';

import 'package:edge_detection/edge_detection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/services/auth_services.dart';
import '../../../../core/services/job_seeker_services.dart';
import '../../../../main.dart';
import '../../../job-seeker-module/data/models/jobseeker_module.dart';

final scanYourIdProvider =
    ChangeNotifierProvider<ScanYourIdsNotifier>((ref) => ScanYourIdsNotifier());

class ScanYourIdsNotifier extends ChangeNotifier {
  IdType? _idType;
  IdType? get idType => _idType;
  set idType(IdType? idType) {
    _idType = idType;
    notifyListeners();
  }

  // TODO: Check where the file is stored
  File? _frontView;
  File? get frontView => _frontView;
  set frontView(File? frontView) {
    _frontView = frontView;
    notifyListeners();
  }

  File? _backView;
  File? get backView => _backView;
  set backView(File? backView) {
    _backView = backView;
    notifyListeners();
  }

  Future<String?> getImage() async {
    String? imagePath;
    try {
      imagePath = await EdgeDetection.detectEdge;
      Logger.root.fine("$imagePath");
    } on PlatformException {
      imagePath = 'Failed to get cropped image path.';
    }
    return imagePath;
  }

  List<IdType>? _idTypes;
  List<IdType>? get idTypes => _idTypes;
  set idTypes(List<IdType>? idTypes) {
    _idTypes = idTypes;
    notifyListeners();
  }

  Future<void> fetchIdTypes() async {
    try {
      idTypes = await container.read(authClientProvider).getIdTypes(
            "Token c1589920cafe4cd3bcd1a45ee53d7bccb5938dc5560364bf5c248ab0f2c62195",
            // "Token ${container.read(userActionsProvider).loginResponse!.token}",
          );
      return;
    } catch (exception, stack) {
      Logger.root.severe("Unable to fetch ID types", exception, stack);
      container.read(crashlyticsProvider).recordError(exception, stack);
    }
  }

  Future<bool> submit() async {
    try {
      final IdResponse response =
          await container.read(jobseekerClientProvider).updateId(
                "Token ${container.read(userActionsProvider).loginResponse!.token}",
                idType!.uid,
                frontView!,
                backView!,
              );
      Logger.root.fine(response);
      return response.status;
    } catch (exception, stack) {
      Logger.root.severe("Id Update failed", exception, stack);
      container.read(crashlyticsProvider).recordError(exception, stack);
      return false;
    }
  }
}
