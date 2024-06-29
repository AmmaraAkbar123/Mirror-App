import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String imagePath;
  final String eventName;
  final String participants;

  const EventCard({
    super.key,
    required this.imagePath,
    required this.eventName,
    required this.participants,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth > 600 ? 94 : constraints.maxWidth / 3 - 10;
        return Container(
          width: cardWidth,
          height: cardWidth * 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: cardWidth * 0.8, // Adjust the height to occupy the upper portion
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eventName,
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.white, size: 8),
                        SizedBox(width: 5),
                        Text(
                          participants,
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                        Spacer(),
                        Icon(Icons.east_outlined, color: Color(0xFF0888FD), size: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
