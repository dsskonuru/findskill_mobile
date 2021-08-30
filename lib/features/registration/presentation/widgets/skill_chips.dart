import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/theme_data.dart';
import '../../../job-seeker-module/data/models/jobseeker_module.dart';
import '../provider/skills_choice_provider.dart';

class SkillSelectChip extends StatelessWidget {
  const SkillSelectChip({Key? key, required this.skills}) : super(key: key);

  final List<Skill> skills;

  @override
  Widget build(BuildContext context) {
    final List<Widget> choices = [];
    for (final Skill skill in skills) {
      choices.add(
        SkillChip(skill: skill),
      );
    }
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: choices,
    );
  }
}

class SkillChip extends StatefulWidget {
  const SkillChip({
    Key? key,
    required this.skill,
  }) : super(key: key);

  final Skill skill;

  @override
  State<SkillChip> createState() => _ChipState();
}

class _ChipState extends State<SkillChip> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final bool isSelected = watch(skillsChoiceProvider)
                .selectedSkills
                ?.contains(widget.skill.skillId) ??
            false;
        return InkWell(
          onTap: () {
            if (watch(skillsChoiceProvider).selectedSkills == null) {
              watch(skillsChoiceProvider).selectedSkills = [];
            }
            setState(
              () {
                if (isSelected) {
                  watch(skillsChoiceProvider)
                      .selectedSkills!
                      .remove(widget.skill.skillId);
                } else {
                  if (watch(skillsChoiceProvider).selectedSkills!.length < 3) {
                    watch(skillsChoiceProvider)
                        .selectedSkills!
                        .add(widget.skill.skillId);
                  }
                }
              },
            );
          },
          child: Container(
            decoration: isSelected
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                        colors: [scubaBlue, vandylBlue],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.5, 0.0),
                        stops: const [0.0, 1.0]),
                  )
                : BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                widget.skill.name,
                style: Theme.of(context).textTheme.button!.copyWith(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: isSelected ? FontWeight.bold : null,
                    ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// class MultiSelectChip extends StatefulWidget {
//   final Set<String> tags;
//   final Set<String>? selectedTags;
//   final Function(Set<String>)? onSelectionChanged;

//   const MultiSelectChip(this.tags,
//       {this.onSelectionChanged, this.selectedTags});

//   @override
//   _MultiSelectChipState createState() => _MultiSelectChipState();
// }

// class _MultiSelectChipState extends State<MultiSelectChip> {
//   Set<String> selectedChoices = {};

//   List<Widget> _buildChoiceList() {
//     if (widget.selectedTags != null) {
//       selectedChoices.addAll(widget.selectedTags!);
//     }
//     final List<Widget> choices = [];
//     for (final String tag in widget.tags) {
//       choices.add(
//         Container(
//           padding: const EdgeInsets.all(2.00),
//           child: ChoiceChip(
//             selectedColor: smaltBlue,
//             backgroundColor: vandylBlue,
//             label: Text(tag, style: Theme.of(context).textTheme.button),
//             selected: selectedChoices.contains(tag),
//             onSelected: (selected) {
//               setState(
//                 () {
//                   selectedChoices.contains(tag)
//                       ? selectedChoices.remove(tag)
//                       : selectedChoices.add(tag);
//                   widget.onSelectionChanged!(selectedChoices);
//                 },
//               );
//             },
//           ),
//         ),
//       );
//     }
//     Logger.root.finest(selectedChoices);
//     return choices;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       alignment: WrapAlignment.spaceAround,
//       children: _buildChoiceList(),
//     );
//   }
// }
