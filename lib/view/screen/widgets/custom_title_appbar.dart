import 'package:flutter/material.dart';

class CustomTitleAppbar extends StatelessWidget {
  final String title;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool isMessage;

  const CustomTitleAppbar({
    super.key,
    required this.title,
    this.leftIcon,
    this.rightIcon,
    this.isMessage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              leftIcon,
              color: Colors.black,
              size: 12,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        isMessage
            ? TextButton(onPressed: () {}, child: Text("data"))
            : rightIcon != null
                ? IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      rightIcon,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {
                      // Define what happens when the right icon is pressed
                    },
                  )
                : SizedBox(
                    width: 25, // Placeholder to balance the Row
                  ),
      ],
    );
  }
}
