import 'package:flutter/material.dart';

class FeedItem {
  final String imagePath;
  final String name;

  FeedItem({required this.imagePath, required this.name});
}

class FeedSection extends StatelessWidget {
  final List<FeedItem> items;

  const FeedSection({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double avatarSize = constraints.maxWidth / 4; 
        double padding = 10.0;
        if (constraints.maxWidth > 600) {
          avatarSize = constraints.maxWidth / 6; 
        } else if (constraints.maxWidth > 400) {
          avatarSize = constraints.maxWidth / 5; 
        } else {
          avatarSize = constraints.maxWidth / 4; 
        }

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((item) => Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: SizedBox(
                width: avatarSize - padding * 2,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: avatarSize / 2 - padding, // Adjust the radius
                        backgroundImage: AssetImage(item.imagePath),
                      ),
                      const SizedBox(height: 8), // Space between image and text
                      Text(
                        item.name,
                        style: const TextStyle(fontSize: 12, color: Colors.white),    
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            )).toList(),
          ),
        );
      },
    );
  }
}
