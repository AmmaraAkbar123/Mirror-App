import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool isPasswordField;
  final VoidCallback? onSuffixIconPressed;
  final double? width;
  final double? height;

  const CustomTextField({
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
      width: width ?? 328, // Default width is 328 if not provided
      height: height ?? 46, // Default height is 46 if not provided

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

class CustomSearchField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final double? width;
  final double? height;
  const CustomSearchField(
      {super.key,
      this.width,
      this.height,
      required this.icon,
      required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 328, // Default width is 328 if not provided
      height: height ?? 46, // Default height is 46 if not provided

      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(37),
        ),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
            filled: true,
            fillColor: Colors.transparent,
            border: InputBorder.none,
            suffixIcon: Icon(icon, color: Colors.white)),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
