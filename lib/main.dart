import 'package:flutter/material.dart';
import 'package:mirror/forget_pasword_screen.dart';
import 'package:mirror/home_screen.dart';
import 'package:mirror/new_password_screen.dart';
import 'package:mirror/very_email_otp_screen.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mirror',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/forgetpassword': (context) => const ForgetPasswordScreen(),
        '/verifyemailotp': (context) => const VerifyEmailOtp(),
        '/newpassword': (context) => const NewPasswordScreen(),
        '/home': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
