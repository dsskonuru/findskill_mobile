// import 'package:findskill/core/services/auth_services.dart';
// import 'package:findskill/features/registration/data/models/registration.dart';
// import 'package:findskill/features/registration/data/models/user_location.dart';
// import 'package:findskill/main.dart';
// import 'package:flutter/material.dart';
// import 'package:logging/logging.dart';

// import 'registration/data/models/otp_verification.dart';

// UserLocation userLocation = UserLocation(
//   placeName: "India",
//   district: "Bleh",
//   state: "Blue",
//   country: "Blah",
//   latitude: 90.0,
//   longitude: 98.1,
// );

// Registration userRegister = Registration(
//   userName: "LOL1",
//   phoneNumber: "+916932201755",
//   password: "LOLOLOLOL",
//   placeName: userLocation.placeName,
//   district: userLocation.district,
//   state: userLocation.state,
//   country: userLocation.country,
//   latitude: userLocation.latitude,
//   longitude: userLocation.longitude,
//   hasAcceptedTerms: true,
//   isEmployer: true,
//   primaryLanguage: LanguageCode(lanuageCode: 'en'),
// );

// class DummyPage extends StatelessWidget {
//   const DummyPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           onPressed: () async {
//             final AuthResponse response =
//                 await container.read(authClientProvider).register(userRegister);
//             Logger.root.finest(response);
//           },
//           child: const Text('Register User'),
//         ),
//       ],
//     );
//   }
// }
