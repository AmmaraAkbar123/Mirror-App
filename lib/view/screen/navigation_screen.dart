import 'package:flutter/material.dart';
import 'package:mirror/view/screen/event_des_screen.dart';
import 'package:mirror/view/screen/main_profile_screen.dart';
import 'package:mirror/view/screen/contest_screen.dart';
import 'package:mirror/view/screen/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const ContestScreen(),
    const EventDesScreen(),
    const MainProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Container(
                color: Colors.white.withOpacity(0.65), // Adjust as needed
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor:
                      Colors.transparent, // Ensure transparent background
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.stars), label: 'Contest'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.bar_chart), label: 'Statistics'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle_outlined),
                        label: 'Profile'),
                  ],
                  currentIndex: _currentIndex,
                  selectedItemColor: Color(0xff0888fd),
                  unselectedItemColor: Colors.white,
                  onTap: _onTabTapped,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
