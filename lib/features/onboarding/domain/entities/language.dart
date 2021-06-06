import 'package:equatable/equatable.dart';

class Language extends Equatable {
  final String code;
  final String name;
  final String localName;

  const Language({
    required this.code,
    required this.name,
    required this.localName,
  });

  @override
  List<Object> get props => [code, name, localName];
}

