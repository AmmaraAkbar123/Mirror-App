import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';

class AddFriendsScreen extends StatelessWidget {
  AddFriendsScreen({Key? key}) : super(key: key);

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
                                        image:
                                            AssetImage(notification.userImage),
                                      ),
                                    ),
                                  ),
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
                                          style: TextStyle(color: Colors.white),
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
                                    onPressed: () {
                                      _showAcceptDialog(
                                          context, notification, false);
                                    },
                                    hasIcon: false,
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
                                        image:
                                            AssetImage(notification.userImage),
                                      ),
                                    ),
                                  ),
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
                                          style: TextStyle(color: Colors.white),
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
                                    onPressed: () {
                                      _showAcceptDialog(
                                          context, notification, false);
                                    },
                                    hasIcon: true,
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

///////////////////
  ///
  void _showAcceptDialog(BuildContext context, NotificationModel notification,
      bool isConfirmation) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width *
                0.9, // Set width to 90% of screen width
            padding: EdgeInsets.all(20), // Add padding for better layout
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image(
                    image: AssetImage(notification.userImage),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  notification.username,
                  style: TextStyle(
                    fontSize: 10, // Adjusted font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                isConfirmation
                    ? Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff3A86FF),
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Text(
                            "Confirm to add ${notification.username} as your friend",
                            style: TextStyle(
                              color: Color(0xff3A86FF),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.3, // Dynamic width
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  _showAcceptDialog(
                                      context, notification, true);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.3, // Dynamic width
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff3A86FF),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Confirm",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
              ],
            ),
          ),
        );
      },
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
