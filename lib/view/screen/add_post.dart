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
                  padding: const EdgeInsets.only(top: 45, left: 12, right: 12),
                  child: CustomTitleAppbar(
                      title: "Add Post", leftIcon: Icons.arrow_back_ios_new),
                ),
                Expanded(
                  child: Container(
                     padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20, left: 12, right: 12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage('assets/users/p3.png'),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Write something here...',
                                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.53)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.send, color: Colors.white),
                                onPressed: () {
                                  // Send post
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12.0),
                          child: TabBar(
                            indicatorColor: Colors.white,
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
                                      height: 130,
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
                                    Divider(color: Colors.white),
                                    PostCard(
                                      username: 'raj_2255',
                                      description:
                                          'one of the most popular thinking about so raining',
                                      imagePath: 'assets/images/addpost.png',
                                    ),
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


