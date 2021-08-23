// import 'package:findskill/core/services/job_seeker_services.dart';
// import 'package:findskill/features/job-seeker-module/data/models/skill_update.dart';
// import 'package:findskill/features/job-seeker-module/data/models/video_update.dart';
// import 'package:findskill/main.dart';
// import 'package:flutter/material.dart';
// import 'package:logging/logging.dart';

// String token =
//     "Token 668aac55f3bc80b3de726baf4311c3ccdf8910d4217692f1e3edda00ba818687";
// SkillUpdate skills = SkillUpdate(
//   skills: [
//     "cc43d2dd-fb7b-418b-b531-f4f50b987a50",
//     "baaa79e0-28a9-4005-afc9-42cf64dc628b",
//   ],
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
//             final SkillUpdateResponse response =
//                 await container.read(jobseekerClientProvider).updateSkills(
//                       token,
//                       skills,
//                     );
//             Logger.root.finest(response);
//           },
//           child: const Text('Update Skills'),
//         ),
//       ],
//     );
//   }
// }
