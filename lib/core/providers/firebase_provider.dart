import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod/riverpod.dart';

import '../../features/registration/data/models/firebase_user.dart';

final crashlyticsProvider =
    Provider<FirebaseCrashlytics>((ref) => FirebaseCrashlytics.instance);

final firestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

final authProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final storageProvider =
    Provider<FirebaseStorage>((ref) => FirebaseStorage.instance);

final usersProvider = Provider<CollectionReference<FirebaseUser>>(
  (ref) => ref
      .read(firestoreProvider)
      .collection('users')
      .withConverter<FirebaseUser>(
        fromFirestore: (snapshot, _) => FirebaseUser.fromJson(snapshot.data()!),
        toFirestore: (user, _) => user.toJson(),
      ),
);
