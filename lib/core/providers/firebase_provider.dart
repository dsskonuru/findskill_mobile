import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod/riverpod.dart';

final crashlyticsProvider =
    Provider<FirebaseCrashlytics>((ref) => FirebaseCrashlytics.instance);

final authProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final storageProvider =
    Provider<FirebaseStorage>((ref) => FirebaseStorage.instance);