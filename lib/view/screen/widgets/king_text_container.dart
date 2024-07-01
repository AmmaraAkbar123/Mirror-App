import 'package:flutter/material.dart';

class KingTextsContainer extends StatelessWidget {
  final String txt1;
  final String txt2;
  final double height;
  final double width;
  final double fontSize;
  final double singleTxtSize;
  const KingTextsContainer({
    super.key,
    required this.txt1,
    required this.txt2,
    this.height = 30,
    this.width = 30,
    this.fontSize = 15,
    this.singleTxtSize = 10,
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
            child: Text(
              txt1,
              style:
                  TextStyle(color: Color(0xff0888FD), fontSize: singleTxtSize),
            ),
          ),
        ),
        Text(txt2, style: TextStyle(color: Colors.black, fontSize: fontSize)),
      ],
    );
  }
}
