import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          // Event description at the top center
          Text(
            "Event Contests Description",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),

          // Restrictions button
          OutlinedButton(
            onPressed: () {
              // Show dialog with restrictions
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Restrictions'),
                    content: Text('List of restrictions for the event.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4), // Adjust padding
              side: BorderSide(color: Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Restrictions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),

          Spacer(),
          // Countdown timer
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Countdown: 1d 3h 45m",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 10,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          Spacer(),

          // Row with start and end times, and restrictions button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start: 12:00 PM, 01 Jan 2024",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "End: 03:00 PM, 02 Jan 2024",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          // Like, Comment, Send, Share row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.white,
                size: 13,
              ),
              SizedBox(width: 3),
              Text(
                "Like",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(width: 12),
              Icon(
                Icons.comment_outlined,
                color: Colors.white,
                size: 13,
              ),
              SizedBox(width: 3),
              Text(
                "Comment",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(width: 12),
              Icon(Icons.send_outlined, color: Colors.white, size: 13),
              SizedBox(width: 3),
              Text(
                "Send",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(width: 12),
              Icon(
                Icons.share_outlined,
                color: Colors.white,
                size: 13,
              ),
              SizedBox(width: 3),
              Text(
                "Share",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
