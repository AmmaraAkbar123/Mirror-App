import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/content_box.dart';
import 'package:mirror/view/screen/widgets/custom_fab.dart';
import 'package:mirror/view/screen/widgets/custom_graph.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';

class EventDesScreen extends StatefulWidget {
  const EventDesScreen({Key? key}) : super(key: key);

  @override
  _EventDesScreenState createState() => _EventDesScreenState();
}

class _EventDesScreenState extends State<EventDesScreen> {
  bool _isExpanded = false;

  final List<String> names = [
    'John',
    'Emma',
    'Michael',
    'Sophia',
    'William',
    'Olivia',
    'James',
    'Ava',
    'John',
    'Christine',
  ];

  final List<String> images = [
    'assets/users/p1.png',
    'assets/users/p2.png',
    'assets/users/p3.png',
    'assets/users/p4.png',
    'assets/users/p5.png',
    'assets/users/p6.png',
    'assets/users/p7.png',
    'assets/users/p8.png',
    'assets/users/p9.png',
    'assets/users/p10.png',
  ];

  // Sample data for the graph
  final List<Map<dynamic, dynamic>> graphData = [
    {'whiteValue': 70.0, 'blueValue': 38.0},
    {'whiteValue': 58.0, 'blueValue': 18.0},
    {'whiteValue': 72.0, 'blueValue': 58.0},
    {'whiteValue': 70.0, 'blueValue': 38.0},
    {'whiteValue': 58.0, 'blueValue': 18.0},
    {'whiteValue': 72.0, 'blueValue': 58.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
                  child: const CustomTitleAppbar(
                      title: "Event Des", leftIcon: Icons.arrow_back_ios_new),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/upcoming.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          width: 110,
                          height: 45,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ////
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dewali Contest",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person_2_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            "122",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  child: const Divider(color: Colors.white),
                ),
                // const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: const Text(
                    "Content",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: const ContentBox(),
                ),
                const SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.white, width: 1),
                      bottom: BorderSide(color: Colors.white, width: 1),
                      left: BorderSide.none,
                      right: BorderSide.none,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          height: 215,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(0, 0, 0, 0)
                                  .withOpacity(0.37),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12),
                              )),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Participants',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: List.generate(
                                              _isExpanded ? 10 : 8,
                                              (index) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 8,
                                                        backgroundImage:
                                                            AssetImage(
                                                                images[index]),
                                                      ),
                                                      const SizedBox(width: 6),
                                                      Text(
                                                        names[index],
                                                        style: const TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),

                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isExpanded = !_isExpanded;
                                          });
                                        },
                                        child: Text(
                                          _isExpanded
                                              ? 'Show less'
                                              : 'Show more',
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const VerticalDivider(color: Colors.white),
                              Expanded(
                                flex: 2,
                                child: CustomGraph(data: graphData),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: const Text(
                    "Shadows",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
          CustomFab(),
        ],
      ),
    );
  }
}
