import 'package:flutter/material.dart';
import 'package:flutter_challenge1/moduls/SignInAndSignUp/signIn_screen.dart';
import 'package:flutter_challenge1/moduls/styles/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: SignInScreen(),
    );
  }
}

