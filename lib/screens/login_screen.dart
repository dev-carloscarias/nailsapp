import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> enteredDigits = [];

  void _digitPressed(String digit) {
    if (enteredDigits.length < 8) {
      setState(() {
        enteredDigits.add(digit);
      });
    }

    if (enteredDigits.length == 8) {
      // Aquí puedes realizar la lógica de validación del PIN
      String pin = enteredDigits.join('');
      print('PIN ingresado: $pin');

      // Aquí puedes navegar a la siguiente pantalla, realizar autenticación, etc.
    }
  }

  void _deleteDigit() {
    if (enteredDigits.isNotEmpty) {
      setState(() {
        enteredDigits.removeLast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 191, 187),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Ingrese su PIN',
                style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(218, 255, 225, 236),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 8; i++)
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: enteredDigits.length > i
                            ? Colors.black
                            : Colors.transparent,
                      ),
                    ),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                for (int i = 1; i <= 9; i++)
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () => _digitPressed(i.toString()),
                      child: Text(
                        i.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(218, 255, 194, 216),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size(20, 20),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () => _digitPressed('0'),
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(218, 255, 194, 216),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      padding: EdgeInsets.all(16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: _deleteDigit,
                    child: Icon(Icons.backspace),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(218, 255, 194, 216),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      padding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
