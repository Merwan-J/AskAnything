import 'package:equatable/equatable.dart';

class Name extends Equatable{
  final String name;
  final RegExp nameRegExp = RegExp(r'^[a-zA-Z]+$');

  Name(this.name) {
    if (! nameRegExp.hasMatch(name)) {
      throw Exception('Name must contain only alphabets');
    }
    if (name.isEmpty) {
      throw Exception('Name can not be empty');
    }
  }

  @override
  List<Object?> get props => [name];  
}


