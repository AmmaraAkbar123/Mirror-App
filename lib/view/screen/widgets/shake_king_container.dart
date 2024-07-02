import 'package:flutter/material.dart';

class ShakeKingContainer extends StatelessWidget {
  final String txt1;

  final IconData icon;
  final double height;
  final double width;

  final double singleTxtSize;
  const ShakeKingContainer({
    super.key,
    required this.txt1,
    this.height = 30,
    this.width = 30,
    this.singleTxtSize = 10,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Color(0xffC6E4FF), borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Color(0xff0888FD),
                  size: 15,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  txt1,
                  style:
                      TextStyle(color: Colors.black, fontSize: singleTxtSize),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
