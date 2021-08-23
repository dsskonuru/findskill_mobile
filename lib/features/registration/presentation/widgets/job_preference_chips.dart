import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/theme_data.dart';
import '../provider/job_preference_choice_provider.dart';

enum Preference {
  contract,
  job,
}

class PreferenceSelectChip extends StatelessWidget {
  const PreferenceSelectChip(
      {Key? key, required this.preferences, required this.type})
      : super(key: key);

  final List<String> preferences;
  final Preference type;

  @override
  Widget build(BuildContext context) {
    final List<Widget> choices = [];
    for (final String preference in preferences) {
      choices.add(
        PreferenceChip(preference: preference, type: type),
      );
    }
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: choices,
    );
  }
}

class PreferenceChip extends StatefulWidget {
  const PreferenceChip({Key? key, required this.preference, required this.type})
      : super(key: key);

  final String preference;
  final Preference type;

  @override
  State<PreferenceChip> createState() => _ChipState();
}

class _ChipState extends State<PreferenceChip> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final bool isSelected = (widget.type == Preference.contract)
            ? watch(jobseekerPreferenceChoiceProvider).selectedContractType ==
                widget.preference
            : watch(jobseekerPreferenceChoiceProvider).selectedJobType ==
                widget.preference;
        return InkWell(
          onTap: () {
            setState(
              () {
                if (isSelected) {
                  (widget.type == Preference.contract)
                      ? watch(jobseekerPreferenceChoiceProvider)
                          .selectedContractType = null
                      : watch(jobseekerPreferenceChoiceProvider)
                          .selectedJobType = null;
                } else {
                  (widget.type == Preference.contract)
                      ? watch(jobseekerPreferenceChoiceProvider)
                          .selectedContractType = widget.preference
                      : watch(jobseekerPreferenceChoiceProvider)
                          .selectedJobType = widget.preference;
                }
              },
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 6.0),
            decoration: isSelected
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                        colors: [scubaBlue, vandylBlue],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.5, 0.0),
                        stops: const [0.0, 1.0]),
                  )
                : BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                widget.preference,
                style: Theme.of(context).textTheme.button!.copyWith(
                      color: isSelected ? Colors.white : Colors.grey.shade500,
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
