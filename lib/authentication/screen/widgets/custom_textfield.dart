import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool isPasswordField;
  final VoidCallback? onSuffixIconPressed;
  final double? width;
  final double? height;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.isPasswordField = false,
    this.onSuffixIconPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 46,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(37),
        ),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
          filled: true,
          fillColor: Colors.transparent,
          border: InputBorder.none,
          suffixIcon: isPasswordField
              ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white,
                  ),
                  onPressed: onSuffixIconPressed,
                )
              : null,
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
