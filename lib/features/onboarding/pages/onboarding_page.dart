import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(child: Text('')),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(              
              children: [
                SizedBox(
                  height: 48,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Entrar'),
                  ),
                ),
                const SizedBox(height: 13),
                SizedBox(
                  height: 48,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () { },
                    child: const Text('Registrar'),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}