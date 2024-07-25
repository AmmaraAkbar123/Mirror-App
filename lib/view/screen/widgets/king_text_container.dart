import 'package:flutter/material.dart';

class KingTextsContainer extends StatelessWidget {
  final String txt1;
  final String txt2;
  final IconData icon;
  final double height;
  final double width;
  final double fontSize;
  final double singleTxtSize;
  final bool isIconAvailable;
  const KingTextsContainer({
    super.key,
    this.txt1 = '',
    required this.txt2,
    this.height = 30,
    this.width = 30,
    this.fontSize = 15,
    this.singleTxtSize = 15, this.icon = Icons.error, this.isIconAvailable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Color(0xffC6E4FF), borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: isIconAvailable ? Icon(icon, color:  Color(0xff0888FD),) : Text(
              txt1,
              style:
                  TextStyle(color: Color(0xff0888FD), fontSize: singleTxtSize),
            ),
          ),
        ),
        Text(txt2, style: TextStyle(color: Colors.white, fontSize: fontSize)),
      ],
    );
  }
}
