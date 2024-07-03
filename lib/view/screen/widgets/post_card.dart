
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String description;
  final String imagePath;

  const PostCard({super.key, 
    required this.username,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user1.png'),
              ),
              title: Text(username,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w600)),
              subtitle: Text(description,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.more_horiz, color: Colors.white, size: 40),
                  SizedBox(width: 8), // Add some spacing between the icons
                  Icon(Icons.close, color: Colors.white, size: 40),
                ],
              ),
            ),
            Image.asset(imagePath, fit: BoxFit.cover),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.white, size: 14),
                      SizedBox(width: 4), 
                      Text('Like',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment, color: Colors.white, size: 14),
                      SizedBox(width: 4), 
                      Text('Comment',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.send, color: Colors.white, size: 14),
                      SizedBox(width: 4), 
                      Text('Send',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.bookmark, color: Colors.white, size: 14),
                      SizedBox(width: 4),
                      Text('Save',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
