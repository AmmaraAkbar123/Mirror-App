import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';

class AddFriendsScreen extends StatelessWidget {
  AddFriendsScreen({super.key});
  final List<NotificationModel> notifications = [
    NotificationModel(
      username: 'John Doe',
      userImage: 'assets/images/user1.png',
      follower: '12.3K Followers',
      timeAgo: 'Mutual Friend +1',
    ),
    NotificationModel(
      username: 'Edein Vindain',
      userImage: 'assets/images/user2.png',
      follower: '12.3K Followers',
      timeAgo: 'Mutual Friend +1',
    ),
    NotificationModel(
      username: 'Edein Vindain',
      userImage: 'assets/images/user3.png',
      follower: '12.3K Followers',
      timeAgo: '5 Mutual Friend',
    ),
    // Add more notifications here
  ];

  @override
  Widget build(BuildContext context) {
    // Get the height of the screen

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/image.jpeg',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
                child: CustomTitleAppbar(
                  title: "Add Friends",
                  leftIcon: Icons.arrow_back_ios_new,
                  midIcon: Icons.person_add_alt_1_rounded,
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          "Requests",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ///////////////////////
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
                                  Container(
                                      height: 60,
                                      width: 60,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(14),
                                        child: Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              notification.userImage),
                                        ),
                                      )),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${notification.username}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          notification.follower,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          notification.timeAgo,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                  ConditionalButton(
                                    hasIcon:
                                        false, // Change to false to show button without icon
                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 10), // Add space between items
                            ],
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Suggestions",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 17,
                            )
                          ],
                        ),
                      ),
                      //////////////////
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
                                  Container(
                                      height: 60,
                                      width: 60,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(14),
                                        child: Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              notification.userImage),
                                        ),
                                      )),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${notification.username}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          notification.follower,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          notification.timeAgo,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                  ConditionalButton(
                                    hasIcon:
                                        true, // Change to false to show button without icon
                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
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
  final String follower;
  final String timeAgo;

  NotificationModel({
    required this.username,
    required this.userImage,
    required this.follower,
    required this.timeAgo,
  });
}

class ConditionalButton extends StatelessWidget {
  final bool hasIcon;
  final VoidCallback onPressed;

  ConditionalButton({required this.hasIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF3A86FF), // Set your desired color here
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(25.0), // Set your desired radius here
        ),
      ),
      child: hasIcon
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 8.0),
                Icon(Icons.person_add_alt_1_rounded,
                    color: Colors.white), // Replace with your desired icon
              ],
            )
          : Text(
              'Accept',
              style: TextStyle(color: Colors.white),
            ),
    );
  }
}
