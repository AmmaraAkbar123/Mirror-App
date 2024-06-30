import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? exploreText;

  const SectionHeader({
    Key? key,
    required this.title,
    this.exploreText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
        if (exploreText != null)
          Row(
            children: [
              Text(
                exploreText!,
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Colors.white,
              ),
            ],
          ),
      ],
    );
  }
}
