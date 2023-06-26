import 'package:flutter/material.dart';
import 'package:nailsapp/widgets/inputText.dart';
import 'package:nailsapp/widgets/playButton.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usuarioController = TextEditingController();
  final pinController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          color: const Color.fromARGB(255, 176, 191, 187),
          child: Column(children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 50, left: 100, right: 100, bottom: 30),
              child: Text(
                'Registrate!',
                style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
            InputTextUser(
                texto: "Usuario",
                txtController: usuarioController,
                icono: const Icon(
                  Icons.account_circle_rounded,
                  color: Color.fromARGB(255, 255, 112, 184),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(8)
                  ],
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(90, 252, 251, 251),
                    labelText: "PIN",
                    labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 173, 186),
                          width: 2.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 255, 112, 184),
                    ),
                  ),
                  controller: pinController),
            ),
            InputTextUser(
                texto: "Nombre",
                txtController: nameController,
                icono: const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 255, 112, 184),
                )),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: AnimatedButton(
                    accion: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                  ),
                ),
              ),
            )
          ])),
    ));
  }
}
