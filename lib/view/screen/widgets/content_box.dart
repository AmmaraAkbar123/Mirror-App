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
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(),
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
          )
        ],
      ),
    );
  }
}
