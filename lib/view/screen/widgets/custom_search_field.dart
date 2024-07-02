import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final double? width;
  final double? height;

  const CustomSearchField({
    super.key,
    this.width,
    this.height,
    required this.icon,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 328,
      height: height ?? 30,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: Colors.transparent,
          border: InputBorder.none,
          isDense: true, // Ensures minimal vertical padding
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8), // Adjusts the padding to center the text vertically
          suffixIcon: Icon(icon, color: Colors.white),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
