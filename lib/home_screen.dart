import 'package:flutter/material.dart';
import 'package:mirror/components/text_image_bar.dart';
import 'package:mirror/components/event_card.dart';

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
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildSectionHeader(context, "Featured Contests"),
                  SizedBox(height: 10),
                  _buildHorizontalScrollSection([
                    EventCard(imagePath: 'assets/images/diwali.jpeg', eventName: 'Diwali', participants: '122'),
                    EventCard(imagePath: 'assets/images/new-year.jpeg', eventName: 'New Year', participants: '122'),
                    EventCard(imagePath: 'assets/images/eid.jpeg', eventName: 'Eid-ul-Fitr', participants: '122'),
                  ]),
                  SizedBox(height: 20),
                  _buildSectionHeader(context, "Popular Contests"),
                  SizedBox(height: 10),
                  _buildHorizontalScrollSection([
                    EventCard(imagePath: 'assets/images/eid2.jpeg', eventName: 'Eid-ul-Adha', participants: '122'),
                    EventCard(imagePath: 'assets/images/easter.jpeg', eventName: 'Easter', participants: '122'),
                    EventCard(imagePath: 'assets/images/christmas.jpeg', eventName: 'Christmas', participants: '122'),
                  ]),
                  SizedBox(height: 20),
                  _buildSectionHeader(context, "Upcoming Contests"),
                  SizedBox(height: 10),
                  _buildUpcomingContestCard(
                      'assets/images/upcoming.jpeg', 'Diwali Celebration Event', 'Jan 31', 'New York, US'),
                  SizedBox(height: 40),
                  _buildSectionHeader(context, "My Feed"),
                  SizedBox(height: 10),
                  _buildMyFeedSection([
                    'assets/images/user1.png',
                    'assets/images/user2.png',
                    'assets/images/user3.png',
                    'assets/images/user4.png',
                  ]),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.stars), label: 'Contest'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Statistics'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
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
    );
  }

  Widget _buildHorizontalScrollSection(List<Widget> children) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: children.map((child) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: child,
        )).toList(),
      ),
    );
  }

Widget _buildUpcomingContestCard(String imagePath, String eventName, String date, String location) {
  return Container(
    width: double.infinity,
    height: 160,
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
        Transform.translate(
          offset: Offset(0, 25),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFC6E4FF).withOpacity(0.72),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      FittedBox(
                        child: Text(
                          'JAN',
                          style: TextStyle(color: Colors.black, fontSize: 9),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          '31',
                          style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            eventName,
                            style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            location,
                            style: TextStyle(color: Colors.black, fontSize: 8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

  Widget _buildMyFeedSection(List<String> images) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: images.map((imagePath) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
        )).toList(),
      ),
    );
  }
}
