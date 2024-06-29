import 'package:flutter/material.dart';
import 'package:mirror/components/custom_textfield.dart';

class TextandImageBar extends StatelessWidget {
  final String title;
  final String image;
  final IconData? icon;

  const TextandImageBar({
    Key? key,
    required this.title,
    required this.image,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: Color.fromARGB(0xA1, 0x08, 0x88, 0xFD).withOpacity(0.4),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Visibility(
                  visible: icon != null,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white)),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 12,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(image),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomSearchField(
              width: double.infinity,
              icon: Icons.search,
              hinttext: "Search",
            ),
          ],
        ),
      ),
    );
  }
}
