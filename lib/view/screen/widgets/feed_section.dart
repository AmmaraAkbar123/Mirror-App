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
        double avatarSize = constraints.maxWidth / 5; // Adjusted avatar size
        double horizontalPadding = 8.0; // Adjusted horizontal padding

        if (constraints.maxWidth > 600) {
          avatarSize = constraints.maxWidth / 7; // Adjusted for larger screens
          horizontalPadding = 8.0; // Adjusted for larger screens
        } else if (constraints.maxWidth > 400) {
          avatarSize = constraints.maxWidth / 6; // Adjusted for medium screens
          horizontalPadding = 6.0; // Adjusted for medium screens
        } else {
          avatarSize = constraints.maxWidth / 5; // Default for smaller screens
        }

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items
                .map((item) => Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: horizontalPadding),
                      child: SizedBox(
                        width: avatarSize,
                        child: Column(
                          mainAxisSize: MainAxisSize.min, // Ensure minimum size
                          children: [
                            CircleAvatar(
                              radius: avatarSize / 2 -
                                  horizontalPadding, // Adjusted radius
                              backgroundImage: AssetImage(item.imagePath),
                            ),
                            const SizedBox(
                                height: 8), // Space between image and text
                            Flexible(
                              child: Text(
                                item.name,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                                textAlign: TextAlign.center,
                                maxLines: 2, // Limit text to 2 lines if needed
                                overflow:
                                    TextOverflow.ellipsis, // Handle overflow
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}
