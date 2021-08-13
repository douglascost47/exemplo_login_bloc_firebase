import 'package:exemplo_login/features/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterEmailPage extends StatelessWidget {
  const RegisterEmailPage({Key? key, required this.email}) : super(key: key);
  final String email;

  static Page<dynamic> page({required String email}) => MaterialPage(child: RegisterEmailPage(email: email));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_right),
        onPressed: () {
          BlocProvider.of<RegisterBloc>(context).nextPage();
        },
      ),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Center(
          child: TextField(
            controller: TextEditingController(text: email),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(hintText: 'Email'),
          ),
        ),
      ),
    );
  }
}