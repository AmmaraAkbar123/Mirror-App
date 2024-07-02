import 'package:flutter/material.dart';
import 'package:mirror/view/screen/upcoming_events_screen.dart';
import 'package:mirror/view/screen/widgets/event_card.dart';
import 'package:mirror/view/screen/widgets/feed_section.dart';
import 'package:mirror/view/screen/widgets/section_header_text.dart';
import 'package:mirror/view/screen/widgets/text_image_bar.dart';
import 'package:mirror/view/screen/widgets/upcoming_contest_card.dart';

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
            backgroundImage: 'assets/images/bar.jpg',
          ),
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  SectionHeader(
                    title: "Featured Contests",
                    exploreText: "Explore",
                  ),
                  const SizedBox(height: 10),
                  _buildHorizontalScrollSection([
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('/event'),
                      child: const EventCard(
                        imagePath: 'assets/images/diwali.jpeg',
                        eventName: 'Diwali',
                        participants: '122',
                        cardWidth: 100,
                      ),
                    ),
                    const EventCard(
                      imagePath: 'assets/images/new-year.jpeg',
                      eventName: 'New Year',
                      participants: '122',
                      cardWidth: 100,
                    ),
                    const EventCard(
                      imagePath: 'assets/images/eid.jpeg',
                      eventName: 'Eid-ul-Fitr',
                      participants: '122',
                      cardWidth: 100,
                    ),
                  ]),
                  const SizedBox(height: 20),
                  SectionHeader(
                    title: "Popular Contests",
                    exploreText: "Explore",
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: _buildHorizontalScrollSection([
                      const EventCard(
                        imagePath: 'assets/images/eid2.jpeg',
                        eventName: 'Eid-ul-Adha',
                        participants: '122',
                        cardWidth: 100,
                      ),
                      const EventCard(
                        imagePath: 'assets/images/easter.jpeg',
                        eventName: 'Easter',
                        participants: '122',
                        cardWidth: 100,
                      ),
                      const EventCard(
                        imagePath: 'assets/images/christmas.jpeg',
                        eventName: 'Christmas',
                        participants: '122',
                        cardWidth: 100,
                      ),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpcomingEventsScreen()),
                    ),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed('/upcomingevent'),
                      child: SectionHeader(
                        title: "Upcoming Contests",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/upcomingevent'),
                    child: UpcomingContestCard(
                      eventName: 'Diwali Celebration Event',
                      day: 'JAN',
                      date: '31',
                      location: 'New York, US',
                      imagePath: 'assets/images/upcoming.jpeg',
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    children: [SectionHeader(title: "My Feed")],
                  ),
                  const SizedBox(height: 10),
                  FeedSection(
                    items: [
                      FeedItem(
                          imagePath: 'assets/images/user1.png',
                          name: 'Jose Richa'),
                      FeedItem(
                          imagePath: 'assets/images/user2.png',
                          name: 'Marry Tom'),
                      FeedItem(
                          imagePath: 'assets/images/user3.png',
                          name: 'Jessica'),
                      FeedItem(
                          imagePath: 'assets/images/user4.png',
                          name: 'William John'),
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

  Widget _buildHorizontalScrollSection(List<Widget> children) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: children
            .map((child) => Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: child,
                ))
            .toList(),
      ),
    );
  }
}
