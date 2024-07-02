import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/content_box.dart';
import 'package:mirror/view/screen/widgets/custom_fab.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';
import 'package:mirror/view/screen/widgets/king_text_container.dart';
import 'package:mirror/view/screen/widgets/shake_king_container.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

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
                  child: customTitleAppbar(
                      title: "Profile", leftIcon: Icons.arrow_back_ios_new),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Content",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                      ContentBox(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.swap_vert,
                          color: Colors.white,
                        ),
                      ),
                      ContentBox(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.swap_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Profile",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '(21 Shakes)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),

                      //boxes
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            ShakeKingContainer(
                              height: 25,
                              width: 50,
                              singleTxtSize: 8,
                              txt1: "Shakes",
                              icon: Icons.shop,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pushNamed('/cloudchat'),
                              child: ShakeKingContainer(
                                height: 25,
                                width: 50,
                                singleTxtSize: 8,
                                txt1: "Messa",
                                icon: Icons.message,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            ShakeKingContainer(
                              height: 25,
                              width: 50,
                              singleTxtSize: 8,
                              txt1: "Tickle",
                              icon: Icons.air,
                            ),
                            
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ////////
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/user4.png"),
                            radius: 18,
                          ),
                          Text(
                            "@gmail",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      KingTextsContainer(txt1: "K", txt2: "500"),
                      SizedBox(
                        width: 5,
                      ),
                      KingTextsContainer(txt1: "K", txt2: "500"),
                      SizedBox(
                        width: 5,
                      ),
                      KingTextsContainer(txt1: "K", txt2: "500")
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GreyIconConytainer(
                            icon: Icons.person,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GreyIconConytainer(
                            icon: Icons.video_call,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GreyIconConytainer(
                            icon: Icons.photo,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                ////
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
                  child: Container(
                    height: 210,
                    width: double.infinity,
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(color: Colors.white)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 15, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "First Name",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Middle Name",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Last Name",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Display Name",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "URL",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Birthday",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Gender",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Relationship Status",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Here For",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Lives",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 15, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Imran",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Ali",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "IMRAN ALI",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "www.google.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "15-02-2001",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Married",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Housing Colony Layyah",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Layyah",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "email1451@gmail.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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

class GreyIconConytainer extends StatelessWidget {
  final IconData icon;
  const GreyIconConytainer({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Icon(
        icon,
        color: Color(0xff4E4E4E),
      ),
    );
  }
}
