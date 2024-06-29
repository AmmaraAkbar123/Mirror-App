import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final String text;

  const CustomButton({
    Key? key,
    this.width,
    this.height,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 328, // Default width is 328 if not provided
      height: height ?? 56, // Default height is 56 if not provided
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          side: const BorderSide(color: Colors.white),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
