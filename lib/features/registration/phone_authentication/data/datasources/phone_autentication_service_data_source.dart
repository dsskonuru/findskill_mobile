import 'package:find_skill/core/constant/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthneticationServiceDataSource {
  Future<bool> isAuthenticated(final String phoneNumber);
}

class AuthneticationDataSourceImpl extends AuthneticationServiceDataSource {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  String? verificationId;

  @override
  Future<bool> isAuthenticated(final String phoneNumber) async {
    await firebaseAuth.verifyPhoneNumber(
      //must conatian country code before phone number 
      phoneNumber: phoneNumber,
      verificationCompleted: (phoneAuthCredential) {
        ///This handler will only be called on Android devices which support automatic SMS code resolution.
        authentication = Authentication(isAuthenticated: true);
      },
      verificationFailed: (error) {
        if (error.code == 'invalid-phone-number') {
          // The provided phone number is not valid.
          authentication = Authentication(isInvalidPhoneNumber: true);
        }else{
          authentication = Authentication(verificationFailed: error);
        }
      },
      codeSent: (verificationId, forceResendingToken) {
        authentication = Authentication(verificationId: verificationId);
      },
      codeAutoRetrievalTimeout: (verificationId) {
        authentication = Authentication(verificationId: verificationId);
      },
      timeout: const Duration(seconds: 60)
    );
    return true;
  }
}
