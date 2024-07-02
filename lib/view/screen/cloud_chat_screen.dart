import 'package:flutter/material.dart';

class CloudChatScreen extends StatelessWidget {
  const CloudChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
