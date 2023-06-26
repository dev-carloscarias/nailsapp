import 'package:flutter/material.dart';
import 'package:nailsapp/screens/intro_screen.dart';
import 'package:nailsapp/screens/login_register_screen.dart';
import 'package:nailsapp/screens/login_screen.dart';
import 'package:nailsapp/screens/register_screen.dart';

void main() {
  runApp(const MainApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const IntroScreen(),
      initialRoute: IntroScreen.id,
      navigatorKey: navigatorKey,
      routes: {
        IntroScreen.id: (context) => const IntroScreen(),
        LoginRegisterScreen.id: (context) => const LoginRegisterScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        LoginScreen.id: (context) => const LoginScreen()
      },
    );
  }
}
