import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../onboarding/presentation/widgets/app_bar.dart';
import '../provider/registration_form_provider.dart';
import '../widgets/chips.dart';

class JobsCategoryPage extends ConsumerWidget {
  const JobsCategoryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // int _selectedKey = 0;
    final Map<String, List<String>> skillsMap =
        context.read(registrationFormProvider).skillsList;
    return Scaffold(
      appBar: const FindSkillAppBar(),
      body: ListView.builder(
        itemBuilder: (context, key) {
          return ExpansionTile(
            title: Text(skillsMap.keys.elementAt(key)),
            children: [
              MultiSelectChip(
                skillsMap[skillsMap.keys.elementAt(key)]!,
                onSelectionChanged: (selectedChips) =>
                    watch(registrationFormProvider).addTags(selectedChips),
              ),
            ],
          );
        },
        itemCount: skillsMap.keys.length,
      ),
    );
  }
}

//  Center(
//         child: Container(
//           height: 90.h,
//           width: 90.w,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(10),
//                 topRight: Radius.circular(10),
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 5,
//                 blurRadius: 7,
//                 offset: const Offset(0, 3), // changes position of shadow
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.topRight,
//                 child: InkWell(
//                   onTap: () {
//                     context
//                         .read(registrationFormProvider)
//                         .toggleJobMenuPressed();
//                     context.router.pop();
//                   },
//                   child: const Icon(Icons.close_rounded),
//                 ),
//               ),
//               Row(
//                 children: [
//                   ListView.builder(
//                     itemBuilder: (context, key) {
//                       return ListTile(
//                         onTap: () => _selectedKey = key,
//                         title: Text(skillsMap.keys.elementAt(key)),
//                       );
//                     },
//                     itemCount: skillsMap.keys.length,
//                   ),
// ListView.builder(
//   itemBuilder: (context, index) {
//     final _skills = skillsMap[_selectedKey];
//     return ListTile(
//       title: Text(_skills!.elementAt(index)),
//     );
//   },
//   itemCount: skillsMap.keys.length,
// ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
