import 'package:flutter/material.dart';

class RegisterEmailPage extends StatelessWidget {
  const RegisterEmailPage({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_right),
        onPressed: () {},
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