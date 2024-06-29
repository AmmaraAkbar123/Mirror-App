import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/event_card.dart';
import 'package:mirror/view/screen/widgets/feed_section.dart';
import 'package:mirror/view/screen/widgets/text_image_bar.dart';

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
                  const SizedBox(height: 10),
                  _buildHorizontalScrollSection([
                    const EventCard(imagePath: 'assets/images/diwali.jpeg', eventName: 'Diwali', participants: '122'),
                    const EventCard(imagePath: 'assets/images/new-year.jpeg', eventName: 'New Year', participants: '122'),
                    const EventCard(imagePath: 'assets/images/eid.jpeg', eventName: 'Eid-ul-Fitr', participants: '122'),
                  ]),
                  const SizedBox(height: 20),
                  _buildSectionHeader(context, "Popular Contests"),
                  const SizedBox(height: 10),
                  Center(
                    child: _buildHorizontalScrollSection([
                      const EventCard(imagePath: 'assets/images/eid2.jpeg', eventName: 'Eid-ul-Adha', participants: '122'),
                      const EventCard(imagePath: 'assets/images/easter.jpeg', eventName: 'Easter', participants: '122'),
                      const EventCard(imagePath: 'assets/images/christmas.jpeg', eventName: 'Christmas', participants: '122'),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text("Upcoming Contests", style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  _buildUpcomingContestCard(
                      'assets/images/upcoming.jpeg', 'Diwali Celebration Event', 'JAN', '31', 'New York, US'),
                  const SizedBox(height: 40),
                  const Row(
                    children: [
                      Text("My Feed", style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  FeedSection(
                    items: [
                      FeedItem(imagePath: 'assets/images/user1.png', name: 'Jose Richa'),
                      FeedItem(imagePath: 'assets/images/user2.png', name: 'Marry Tom'),
                      FeedItem(imagePath: 'assets/images/user3.png', name: 'Jessica'),
                      FeedItem(imagePath: 'assets/images/user4.png', name: 'William John'),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
        const Row(
          children: [
            Text(
              "Explore",
              style: TextStyle(color: Colors.white, fontSize: 10),
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
          padding: const EdgeInsets.only(right: 25.0),
          child: child,
        )).toList(),
      ),
    );
  }

  Widget _buildUpcomingContestCard(String imagePath, String eventName, String date, String day, String location) {
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
            offset: const Offset(0, 25),
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFC6E4FF).withOpacity(0.72),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Text(
                            date,
                            style: const TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            day,
                            style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              eventName,
                              style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              location,
                              style: const TextStyle(color: Colors.black, fontSize: 8),
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
}
