import 'package:flutter/material.dart';

class RegisterNamePage extends StatelessWidget {
  const RegisterNamePage({Key? key, required this.name}) : super(key: key);
  final String name;

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
            controller: TextEditingController(text: name),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(hintText: 'Nome'),
          ),
        ),
      ),
    );
  }
}