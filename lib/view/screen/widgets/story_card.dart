import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String imagePath;
  const StoryCard({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double dynamicHeight = screenHeight * 0.15;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter, 
            children: [
              Container(
                width: 70,
                height: dynamicHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 4, 
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/users/p3.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
