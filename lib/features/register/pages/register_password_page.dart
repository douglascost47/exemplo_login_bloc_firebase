import 'package:flutter/material.dart';

class RegisterPasswordPage extends StatelessWidget {
  const RegisterPasswordPage({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {},
      ),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Center(
          child: TextField(
            controller: TextEditingController(),
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(hintText: 'Senha'),
          ),
        ),
      ),
    );
  }
}