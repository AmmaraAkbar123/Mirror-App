import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/quarter_circle_painter.dart';

class CustomFab extends StatefulWidget {
  @override
  _CustomFabState createState() => _CustomFabState();
}

class _CustomFabState extends State<CustomFab>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        if (_isExpanded)
          Positioned(
            bottom: 30,
            right: 30,
            child: CustomPaint(
              size: Size(200, 200),
              painter: QuarterCirclePainter(),
              child: Container(
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    _buildTextSection(
                        'Settings',
                        [
                          'Privacy Policy',
                          'Terms & Condition ',
                          'Media',
                          'Language',
                          'Logout'
                        ],
                        15,
                        Offset(120, 25)),
                    _buildTextSection(
                        'Accounts',
                        [
                          'Bank Info',
                          'Payment Info',
                          'ID Verification',
                          'History',
                          'Wallet'
                        ],
                        45,
                        Offset(50, 85)),
                    _buildTextSection(
                        'Accounts',
                        [
                          'Bank Info',
                          'Payment Info',
                          'ID Verification',
                          'History',
                          'Wallet'
                        ],
                        75,
                        Offset(15, 175)),
                  ],
                ),
              ),
            ),
          ),
          
        Positioned(
          child: FloatingActionButton(
            onPressed: _toggle,
            backgroundColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Text(
              'P',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          bottom: 20,
          right: 20,
        ),
      
      ],
    );
  }

 Widget _buildTextSection(String title, List<String> options,
    double rotationAngle, Offset position) {
  return Positioned(
    left: position.dx,
    top: position.dy,
    child: Transform(
      transform: Matrix4.rotationZ(rotationAngle * -6 / 330), // Convert degrees to radians
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 8), // Title text size 8px
            ),
          ),
          ...options.map((option) {
            return GestureDetector(
              onTap: () {
                // Handle navigation here
                Navigator.pushNamed(context, '/$option');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Center(
                  child: Text(
                    option,
                    style: TextStyle(fontSize: 6), // Option text size 6px
                  ),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    ),
  );
}

  void _toggle() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }
}
