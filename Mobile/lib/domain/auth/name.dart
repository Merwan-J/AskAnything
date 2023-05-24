import 'package:equatable/equatable.dart';

class Name extends Equatable {
  final String name;
  final RegExp nameRegExp = RegExp(r'^[a-zA-Z]+$');

  Name({required this.name}) {
    if (!nameRegExp.hasMatch(name)) {
      throw Exception('Name must contain only alphabets');
    }
    if (name.isEmpty) {
      throw Exception('Name can not be empty');
    }
  }

  @override
  List<Object?> get props => [name];

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }

  // Name _nameFromJson(Map<String, dynamic> json) {
  //   return Name(
  //     name: json['name'] as String,
  //   );
  // }

  // Map<String, dynamic> _nameToJson(Name name) {
  //   return {
  //     'name': name,
  //   };
  // }
}
