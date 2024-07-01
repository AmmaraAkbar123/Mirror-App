import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class CustomFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableFab(
      distance: 100,
      type: ExpandableFabType.fan,
      children: [
        _buildFabAction(context, 'Profile', () {
          Navigator.pushNamed(context, '/profile');
        }),
        _buildFabAction(context, 'Settings', () {
          Navigator.pushNamed(context, '/settings');
        }),
        _buildFabAction(context, 'Logout', () {
          Navigator.pushNamed(context, '/logout');
        }),
      ],
    );
  }

  Widget _buildFabAction(BuildContext context, String label, VoidCallback onPressed) {
    return FloatingActionButton(
      heroTag: label,
      onPressed: onPressed,
      child: Container(
        width: 120,
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
