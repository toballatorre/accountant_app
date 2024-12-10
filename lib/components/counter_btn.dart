import 'package:flutter/material.dart';

class Counterbtn extends StatelessWidget {
  const Counterbtn({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
