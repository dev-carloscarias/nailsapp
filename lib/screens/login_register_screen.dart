import 'package:flutter/material.dart';
import 'package:nailsapp/screens/login_screen.dart';
import 'package:nailsapp/screens/register_screen.dart';
import 'package:nailsapp/widgets/inputText.dart';
import 'package:nailsapp/widgets/playButton.dart';

class LoginRegisterScreen extends StatefulWidget {
  static const String id = 'login_register';
  const LoginRegisterScreen({super.key});

  @override
  State<LoginRegisterScreen> createState() => _LoginRegisterScreenState();
}

class _LoginRegisterScreenState extends State<LoginRegisterScreen> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          color: const Color.fromARGB(255, 176, 191, 187),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: InputTextUser(
                  texto: "Usuario/Email",
                  txtController: myController,
                  icono: const Icon(Icons.person,
                      color: Color.fromARGB(255, 255, 112, 184))),
            ),
            const Text(
              'Si no tienes usuario aún \ningresa tu email para registrarte.',
              style: TextStyle(
                fontFamily: 'AbhayaLibre',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: AnimatedButton(
                    accion: () {
                      if (myController.text.contains("@")) {
                        Navigator.pushNamed(context, RegisterScreen.id);
                      } else {
                        Navigator.pushNamed(context, LoginScreen.id);
                      }
                    },
                  ),
                ),
              ),
            )
          ])),
    ));
  }
}
