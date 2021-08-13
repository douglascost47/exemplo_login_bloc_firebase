import 'package:exemplo_login/features/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterNamePage extends StatelessWidget {
  const RegisterNamePage({Key? key, required this.name}) : super(key: key);
  final String name;

  static Page<dynamic> page({required String name}) => MaterialPage(child: RegisterNamePage(name: name));

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
            controller: TextEditingController(text: name),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(hintText: 'Nome'),
          ),
        ),
      ),
    );
  }
}