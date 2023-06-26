import 'package:flutter/material.dart';
import 'package:nailsapp/screens/login_register_screen.dart';
import 'package:nailsapp/widgets/playButton.dart';

class IntroScreen extends StatelessWidget {
  static const String id = 'intro';
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          color: const Color.fromARGB(255, 176, 191, 187),
          child: Column(children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage('assets/mindboxLetters.png'),
                  width: 280,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: AnimatedButton(
                    accion: () {
                      Navigator.pushNamed(context, LoginRegisterScreen.id);
                    },
                  ),
                ),
              ),
            )
          ])),
    ));
  }
}
