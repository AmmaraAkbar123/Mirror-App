import 'package:flutter/material.dart';
import 'package:mirror/components/text_image_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          const TextandImageBar(
            title: 'Home',
            image: 'assets/images/boy.png',
          ),
          Positioned(
            top: 190,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured Contests",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildEventCard('assets/images/diwali.jpeg', 'Diwali', '122'),
                      SizedBox(width: 10),
                      _buildEventCard('assets/images/new-year.jpeg', 'New Year', '122'),
                      SizedBox(width: 10),
                      _buildEventCard('assets/images/eid.jpeg', 'Eid-ul-Fitr', '122'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventCard(String imagePath, String eventName, String participants) {
    return Container(
      width: 150,
      height: 200,
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
              color: Colors.grey.withOpacity(0.9),
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
  }
}
