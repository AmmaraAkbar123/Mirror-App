import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
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
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTitleAppbar(
                      title: "Event Des", icon: Icons.arrow_back_ios_new),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
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
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
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
                  SizedBox(height: 15),
                  Row(
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
                  SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    child: Divider(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Content",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 5),
                  ContentBox(),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: Divider(color: Colors.white),
                  ),
                  Container(
                    height: 215,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        )),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             
                              Text(
                                'Participants',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              // SizedBox(height: 10),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: List.generate(
                                      _isExpanded ? 10 : 8,
                                      (index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 8,
                                                backgroundImage:
                                                    AssetImage(images[index]),
                                              ),
                                              SizedBox(width: 6),
                                              Text(
                                                names[index],
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white),
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
                                  _isExpanded ? 'Show less' : 'Show more',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(color: Colors.white),
                        Expanded(
                          flex: 2,
                          child: CustomGraph(data: graphData),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.white),
                  Text(
                    "Shadows",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: CustomFab(),
    );
  }
}
