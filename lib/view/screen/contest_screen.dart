import 'package:flutter/material.dart';
import 'package:mirror/model/event_model.dart';
import 'package:mirror/view/screen/widgets/event_card.dart';
import 'package:mirror/view/screen/widgets/text_image_bar.dart';

class ContestScreen extends StatelessWidget {
  const ContestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data
    // Create a list of EventModel instances

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          const TextandImageBar(
            title: 'Explore',
            image: 'assets/images/boy.png',
            backgroundImage: 'assets/images/bar.jpg',
            icon: Icons.arrow_back_ios_new,
          ),
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      return EventCard(
                        imagePath: event.imagePath,
                        eventName: event.eventName,
                        participants: event.participants,
                        cardWidth: MediaQuery.of(context).size.width / 3,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
