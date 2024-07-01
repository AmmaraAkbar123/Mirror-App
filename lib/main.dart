import 'package:flutter/material.dart';
import 'package:mirror/authentication/screen/forget_pasword_screen.dart';
import 'package:mirror/view/screen/contest_screen.dart';
import 'package:mirror/view/screen/home_screen.dart';
import 'package:mirror/authentication/screen/new_password_screen.dart';
import 'package:mirror/authentication/screen/very_email_otp_screen.dart';
import 'package:mirror/view/screen/navigation_screen.dart';
import 'package:mirror/view/screen/profile_screen.dart';
import 'package:mirror/view/screen/statistics_screen.dart';
import 'package:mirror/view/screen/upcoming_events_screen.dart';
import 'view/screen/splash_screen.dart';
import 'authentication/screen/login_screen.dart';
import 'authentication/screen/signup_screen.dart';

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
        '/navigationbar': (context) => const NavigationScreen(),
        '/contest': (context) => const ContestScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/statistics': (context) => const StatisticsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
