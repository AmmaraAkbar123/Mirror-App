import 'package:flutter/material.dart';
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
    'Ava'
  ];

  final List<String> images = [
    'assets/images/image1.jpeg',
    'assets/images/image2.jpeg',
    'assets/images/image3.jpeg',
    'assets/images/image4.jpeg',
    'assets/images/image5.jpeg',
    'assets/images/image6.jpeg',
    'assets/images/image7.jpeg',
    'assets/images/image8.jpeg'
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTitleAppbar(
                    title: "Event Des", icon: Icons.arrow_back_ios_new),
                SizedBox(
                  height: 20,
                ),
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
                SizedBox(
                  height: 15,
                ),
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
                SizedBox(
                  height: 5,
                ),
                Divider(color: Colors.white),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Content",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 160,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color:
                            const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
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
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Like",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.comment_outlined,
                              color: Colors.white,
                              size: 13,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Comment",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Icon(Icons.send_outlined,
                                color: Colors.white, size: 13),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Send",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 13,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Share",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(27),
                      )),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Participants',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            //SizedBox(height: 10),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: List.generate(
                                    _isExpanded ? 8 : 5,
                                    (index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundImage:
                                                  AssetImage(images[index]),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              names[index],
                                              style: TextStyle(
                                                  fontSize: 12,
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
                      Expanded(
                        flex: 1,
                        child: CustomGraph(),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Shadows",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder for custom graph
    return Container(
      color: Colors.grey[300],
      child: Center(
        child: Text('Custom Graph Here'),
      ),
    );
  }
}
