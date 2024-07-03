// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mirror/view/screen/widgets/custom_search_field.dart';

class TextandImageBar extends StatelessWidget {
  final String title;
  final String image;
  final String backgroundImage;
  final IconData? icon;

  const TextandImageBar({
    super.key,
    required this.title,
    required this.image,
    required this.backgroundImage,
    this.icon, 
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          // Background Image
          Container(
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
          // Foreground content
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xA00888FD).withOpacity(0.63),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    if (icon != null)
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 10,
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
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(image),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const CustomSearchField(
                  width: double.infinity,
                  icon: Icons.search,
                  hinttext: "Search",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
