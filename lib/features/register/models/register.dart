import 'package:equatable/equatable.dart';

class Register extends Equatable{
  final String name;
  final String email;
  final String password;

  const Register({required this.name,required this.email,required this.password});

  const Register.empty({this.name = '', this.email = '',this.password = ''});

  @override  
  List<Object?> get props => [name, email, password];


  Register copyWith({
    String? name,
    String? email,
    String? password,
  }) {
    return Register(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}