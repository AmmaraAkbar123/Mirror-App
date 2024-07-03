import 'package:flutter/material.dart';

class CustomChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomChatAppBar({super.key})
      : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          // Back button
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 12,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(width: 10), // Space between back button and profile image

          // Profile image with online indicator
          Stack(
            children: [
              CircleAvatar(
                radius: 18, // Increase the radius if needed
                backgroundImage: AssetImage('assets/users/p1.png'),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 8), // Space between profile image and text

          // User name and status
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Edein Vindain',
                  style: TextStyle(fontSize: 10, color: Colors.white)),
              Text('Active now',
                  style: TextStyle(
                      fontSize: 10, color: Colors.white.withOpacity(0.5))),
            ],
          ),
          Spacer(),

          // Action buttons
          Row(
            children: [
              Icon(
                Icons.call,
                color: Colors.white,
                size: 16,
              ),
              SizedBox(width: 5,),
              Icon(
                Icons.videocam,
                color: Colors.white,
                size: 22,
              ),
              SizedBox(width: 5,),

              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 22,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
