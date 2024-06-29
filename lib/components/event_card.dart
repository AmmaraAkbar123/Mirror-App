// components/event_card.dart

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
        double cardWidth = constraints.maxWidth > 600 ? 150 : constraints.maxWidth / 3 - 10;
        return Container(
          width: cardWidth,
          height: cardWidth * 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eventName,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.white, size: 14),
                        SizedBox(width: 5),
                        Text(
                          participants,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14),
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
