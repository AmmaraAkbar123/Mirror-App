import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String imagePath;
  const StoryCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 70,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/users/p3.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
