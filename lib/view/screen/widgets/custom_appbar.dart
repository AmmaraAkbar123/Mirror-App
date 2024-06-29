import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String imagePath;

  CustomAppBar({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      decoration: BoxDecoration(
        color: Color(0x9F0888FD).withOpacity(0.63),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Empty space to balance the CircleAvatar
            SizedBox(width: 50),
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0); // Custom height
}
