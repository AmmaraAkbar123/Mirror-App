import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String imagePath;
  final String eventName;
  final String participants;
  final double cardWidth;

  const EventCard({
    super.key,
    required this.imagePath,
    required this.eventName,
    required this.participants,
    required this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardWidth * 1.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: cardWidth * 0.9,
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
                    Icon(Icons.east_outlined,
                        color: Color(0xFF0888FD), size: 8),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
