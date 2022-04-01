import 'package:assingment_app/screens/location.dart';
import 'package:flutter/material.dart';
import 'screens/splashscreens.dart';
import 'screens/login.dart';
import 'screens/register.dart';
import 'screens/otp.dart';
import 'screens/location.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      routes: {
        'splash': (context) => const Splashscreen(),
        'register': (context) => const RegisterPage(),
        'login': (context) => const LoginPage(),
        'Otp': (context) => const OtpPage(
              numValue: '',
            ),
        'location': (context) => const AddressPage(),
      },
    ),
  );
}
