import 'package:flutter/material.dart';
import 'package:mirror/authentication/screen/widgets/custom_textfield.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';
import 'package:mirror/view/screen/widgets/king_text_container.dart';

class UpcomingEventsScreen extends StatelessWidget {
  const UpcomingEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          Column(
            children: [
              // K, S, V
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
                child: Column(
                  children: [
                    customTitleAppbar(
                        title: "Upcoming Events",
                        leftIcon: Icons.arrow_back_ios_new),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      hintText: 'Enter Contest',
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        KingTextsContainer(
                          txt1: "K",
                          txt2: '100',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        KingTextsContainer(
                          txt1: "S",
                          txt2: '1',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        KingTextsContainer(
                          txt1: "V",
                          txt2: '1',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // Divider
              Container(
                width: double.infinity,
                height: 25,
                color: Color(0xffF2F2F2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_downward_rounded,
                      size: 10,
                    ),
                    Text(
                      "Swipe down for details",
                      style: TextStyle(fontSize: 9),
                    ),
                  ],
                ),
              ),

              // Vertical divider with texts on both sides
              Expanded(
                child: Stack(
                  children: [
                    // Add texts and vertical divider
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Texts to the left of the vertical divider
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 55,
                                    ),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage("assets/images/user2.png"),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Eid ul Fitr",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                //SizedBox(height: 8),
                                Row(
                                  children: [
                                    KingTextsContainer(
                                      txt1: "K",
                                      txt2: "100",
                                    ),
                                    SizedBox(width: 8),
                                    KingTextsContainer(
                                      txt1: "txt1",
                                      txt2: "txt2",
                                    ),
                                    SizedBox(width: 8),
                                    KingTextsContainer(
                                      txt1: "txt1",
                                      txt2: "txt2",
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Starting Time:",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "1/01/2022,  3:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff818181), fontSize: 10),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Ending Time:",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "1/01/2022,  3:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff818181), fontSize: 10),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              thickness: 1,
                              color: Colors.white,
                              endIndent: 400,
                            ),

                            // Texts to the right of the vertical divider
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Event Description:",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                      style: TextStyle(
                                          color: Color(0xff818181),
                                          fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Restrictions",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text he printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                      style: TextStyle(
                                          color: Color(0xff818181),
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 5,
                      right: 5,
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(0, 0, 0, 0)
                              .withOpacity(0.37),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
