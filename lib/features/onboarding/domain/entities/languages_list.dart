import 'package:equatable/equatable.dart';

import '../../data/models/language_model.dart';

class LanguagesList extends Equatable {
  final List<LanguageModel> language;

  const LanguagesList({
    required this.language,
  });

  @override
  List<Object?> get props => [
        language,
      ];
}
