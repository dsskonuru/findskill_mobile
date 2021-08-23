import 'dart:io';

import 'package:edge_detection/edge_detection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final scanYourIdProvider =
    ChangeNotifierProvider<ScanYourIdsNotifier>((ref) => ScanYourIdsNotifier());

class ScanYourIdsNotifier extends ChangeNotifier {
  String? _idType;
  String? get idType => _idType;
  set idType(String? idType) {
    _idType = idType;
    notifyListeners();
  }

  List<String> idTypesList = ["Aadhar Card", "PAN Card", "Driving License", "Electoral ID"];

  File? _frontPicture;
  File? get frontPicture => _frontPicture;
  set frontPicture(File? frontPicture) {
    _frontPicture = frontPicture;
    notifyListeners();
  }

  File? _backPicture;
  File? get backPicture => _backPicture;
  set backPicture(File? backPicture) {
    _backPicture = backPicture;
    notifyListeners();
  }

  Future<void> submit() async {
    // TODO: Call the submit API
    // container.read(jobseekerClientProvider).updateSkills(token, skills);
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
}
