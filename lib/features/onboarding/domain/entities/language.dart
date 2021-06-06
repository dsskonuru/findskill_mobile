import 'package:equatable/equatable.dart';

class Language extends Equatable {
  final String code;
  final String name;
  // ignore: non_constant_identifier_names
  final String local_name;

  const Language({
    required this.code,
    required this.name,
    // ignore: non_constant_identifier_names
    required this.local_name,
  });

  @override
  List<Object> get props => [code, name, local_name];
}
