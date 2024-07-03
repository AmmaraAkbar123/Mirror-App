import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/add_story_button.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';
import 'package:mirror/view/screen/widgets/post_card.dart';
import 'package:mirror/view/screen/widgets/story_card.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 45, left: 12, right: 12, bottom: 12),
                  child: CustomTitleAppbar(
                      title: "Add Post", leftIcon: Icons.arrow_back_ios_new),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 12, right: 12, bottom: 6),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 14,
                                backgroundImage:
                                    AssetImage('assets/users/p3.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Container(
                                  height: 35.0,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Write something here...',
                                      hintStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.53),
                                        fontSize: 10,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12),
                                    ),
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 110, 94, 94)),
                                  ),
                                ),
                              
                              ),
                              IconButton(
                                icon: Icon(Icons.send, color: Colors.white),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.white),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide:
                                  BorderSide(width: 5.0, color: Colors.white),
                              insets: EdgeInsets.symmetric(horizontal: 16.0),
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.white70,
                            tabs: [
                              Tab(text: "Stories"),
                              Tab(text: "Contest"),
                            ],
                          ),
                        ),
                        Flexible(
                          child: TabBarView(
                            children: [
                              // Stories Tab
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 6,
                                    ),
                                    SizedBox(
                                      height: 120,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          AddStoryButton(),
                                          StoryCard(
                                              imagePath:
                                                  'assets/images/story1.jpeg'),
                                          StoryCard(
                                              imagePath:
                                                  'assets/images/story2.jpeg'),
                                          StoryCard(
                                              imagePath:
                                                  'assets/images/story3.jpeg'),
                                          StoryCard(
                                              imagePath:
                                                  'assets/images/story4.jpeg'),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Color(0xFFE4E6E6),
                                      thickness: 5,
                                    ),
                                    PostCard(
                                      username: 'raj_2255',
                                      description:
                                          'one of the most popular thinking about so raining',
                                      imagePath: 'assets/images/addpost.png',
                                    ),
                                    Divider(color: Colors.white),
                                  ],
                                ),
                              ),
                              // Contest Tab
                              Center(
                                child: Text(
                                  "Contest Content Here",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
