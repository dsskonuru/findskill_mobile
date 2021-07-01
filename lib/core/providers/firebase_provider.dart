import 'package:firebase_auth/firebase_auth.dart' as fauth;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:riverpod/riverpod.dart';

final crashlyticsProvider =
    Provider<FirebaseCrashlytics>((ref) => FirebaseCrashlytics.instance);

final authProvider =
    Provider<fauth.FirebaseAuth>((ref) => fauth.FirebaseAuth.instance);



