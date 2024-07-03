import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/addfriendsscreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          const Center(
            child: Text(
              'Mirror',
              style: TextStyle(
                fontFamily: 'RubikMonoOne',
                fontWeight: FontWeight.w400,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
