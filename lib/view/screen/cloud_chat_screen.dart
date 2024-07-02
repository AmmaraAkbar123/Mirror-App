import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/content_box.dart';
import 'package:mirror/view/screen/widgets/custom_fab.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';

class CloudChatScreen extends StatelessWidget {
  CloudChatScreen({super.key});

  final List<String> names = [
    'John',
    'Emma',
    'Michael',
    'Sophia',
    'William',
    'Olivia',
    'James',
  ];
  final List<String> messages = [
    'This is a dummy message',
    'This is a dummy message',
    'This is a dummy message',
    'This is a dummy message',
    'This is a dummy message',
    'This is a dummy message',
    'This is a dummy message',
  ];

  final List<String> images = [
    'assets/users/p1.png',
    'assets/users/p2.png',
    'assets/users/p3.png',
    'assets/users/p4.png',
    'assets/users/p5.png',
    'assets/users/p6.png',
    'assets/users/p7.png',
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 12, right: 12),
                  child: CustomTitleAppbar(
                      title: "Cloud Chat", leftIcon: Icons.arrow_back_ios_new),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: const Divider(color: Colors.white),
                    ),
                    Text(
                      'Channel 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Divider(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ContentBox(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ContentBox(),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      child: const Divider(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    height: 215,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color:
                            const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Expanded(
                          child: ListView.builder(
                            itemCount: names.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 10),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundImage:
                                          AssetImage(images[index]),
                                    ),
                                    const SizedBox(width: 6),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          names[index],
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          messages[index],
                                          style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.tag_faces, color: Colors.grey),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Type a message',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.attach_file, color: Colors.grey),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.camera_alt, color: Colors.grey),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomFab(),
        ],
      ),
    );
  }
}
