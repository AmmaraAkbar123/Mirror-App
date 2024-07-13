import 'package:flutter/material.dart';
import 'package:mirror/authentication/screen/widgets/custom_textfield.dart';
import 'package:mirror/view/screen/widgets/calender_box.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';
import 'package:mirror/view/screen/widgets/king_text_container.dart';
import 'package:mirror/view/screen/widgets/section_header_text.dart';

class UpcomingEventsScreen extends StatelessWidget {
  const UpcomingEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
                  child: Column(
                    children: [
                      CustomTitleAppbar(
                        title: "Upcoming Events",
                        leftIcon: Icons.arrow_back_ios_new,
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        hintText: 'Enter Contest',
                        width: double.infinity,
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          KingTextsContainer(
                            txt1: "K",
                            txt2: '100',
                          ),
                          SizedBox(width: 8),
                          KingTextsContainer(
                            txt1: "S",
                            txt2: '1',
                          ),
                          SizedBox(width: 8),
                          KingTextsContainer(
                            txt1: "V",
                            txt2: '1',
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
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
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.37),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.only(top: 8 , bottom: 30 , left: 12 , right: 12,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
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
                                  SizedBox(height: 8),
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
                                      color: Color(0xff818181),
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Ending Time:",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "1/01/2022,  3:00 PM",
                                    style: TextStyle(
                                      color: Color(0xff818181),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // VerticalDivider(
                            //   thickness: 1,
                            //   color: Colors.white,
                            // ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 4,),
                                  Text(
                                    "Event Description:",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(
                                      color: Color(0xff818181),
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Restrictions",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text he printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                    style: TextStyle(
                                      color: Color(0xff818181),
                                      fontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SectionHeader(
                    title: "Scheduled Contests Calender",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: CalendarBox(),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
