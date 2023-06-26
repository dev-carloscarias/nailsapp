import 'package:flutter/material.dart';

class InputTextUser extends StatefulWidget {
  final String texto;
  final TextEditingController txtController;
  final Icon? icono;
  const InputTextUser(
      {super.key,
      required this.texto,
      required this.txtController,
      this.icono});

  @override
  State<InputTextUser> createState() => _InputTextUserState();
}

class _InputTextUserState extends State<InputTextUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(90, 252, 251, 251),
          labelText: widget.texto,
          labelStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 255, 173, 186), width: 2.0),
          ),
          suffixIcon: widget.icono,
        ),
        controller: widget.txtController,
      ),
    );
  }
}
