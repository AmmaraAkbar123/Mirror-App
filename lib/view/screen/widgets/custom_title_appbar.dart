import 'package:flutter/material.dart';

class CustomTitleAppbar extends StatelessWidget {
  final String title;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool isMessage;
  final IconData? midIcon;

  const CustomTitleAppbar({
    Key? key,
    required this.title,
    this.leftIcon,
    this.rightIcon,
    this.isMessage = false,
    this.midIcon,
  }) : super(key: key);

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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (midIcon != null) ...[
                  SizedBox(width: 7),
                  Icon(
                    midIcon,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ],
            ),
          ),
        ),
        isMessage
            ? Container(
              decoration: BoxDecoration(
                color: Color(0xFFC6E4FF),
                      borderRadius: BorderRadius.circular(5),

              ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                  children: [
                    Container(
                      width: 14,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/flag.png'),
                        ),
                      ),
                    ),
                                SizedBox(width: 2,),
                    Text("Pakistan", style: TextStyle(fontSize: 8),),
                    Icon(Icons.arrow_drop_down,
                                color: Colors.black, size: 10,),
                  ],
                                ),
                ))
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
