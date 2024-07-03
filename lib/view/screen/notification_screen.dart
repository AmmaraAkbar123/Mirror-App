import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final List<NotificationModel> notifications = [
    NotificationModel(
      username: 'Edein Vindain',
      userImage: 'assets/images/user1.png',
      comment: 'reacted to your \ncomment: "Stupid boy, I don\'t..."',
      timeAgo: 'Just now',
    ),
    NotificationModel(
      username: 'Edein Vindain',
      userImage: 'assets/images/user2.png',
      comment: 'reacted to your \ncomment: "Stupid boy, I don\'t..."',
      timeAgo: 'Just now',
    ),
    NotificationModel(
      username: 'Edein Vindain',
      userImage: 'assets/images/user3.png',
      comment: 'reacted to your \ncomment: "Stupid boy, I don\'t..."',
      timeAgo: '57 minutes ago',
    ),
    // Add more notifications here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
                child: CustomTitleAppbar(
                  title: "Notifications",
                  leftIcon: Icons.arrow_back_ios_new,
                  rightIcon: Icons.notifications,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "New",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        ListView.builder(
                          padding: const EdgeInsets.all(10),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: notifications.length,
                          itemBuilder: (context, index) {
                            final notification = notifications[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage(notification.userImage),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      '${notification.username} ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: notification.comment,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            notification.timeAgo,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10), // Add space between items
                              ],
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Earlier",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        ListView.builder(
                          padding: const EdgeInsets.all(10),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: notifications.length,
                          itemBuilder: (context, index) {
                            final notification = notifications[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage(notification.userImage),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      '${notification.username} ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: notification.comment,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            notification.timeAgo,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10), // Add space between items
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationModel {
  final String username;
  final String userImage;
  final String comment;
  final String timeAgo;

  NotificationModel({
    required this.username,
    required this.userImage,
    required this.comment,
    required this.timeAgo,
  });
}
