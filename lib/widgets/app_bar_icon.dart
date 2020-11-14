import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const AppBarIcon({Key key, this.onPressed, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.12),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
