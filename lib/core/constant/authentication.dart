import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  final bool? isAuthenticated;
  final bool? isInvalidPhoneNumber;
  final bool? codeSent;
  final String? verificationId;   
  final FirebaseAuthException? verificationFailed; 
  Authentication({
    this.isAuthenticated,
    this.isInvalidPhoneNumber,
    this.codeSent,
    this.verificationId,
    this.verificationFailed,
  });
}


Authentication authentication = Authentication();