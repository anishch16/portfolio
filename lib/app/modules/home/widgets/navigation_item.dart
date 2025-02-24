import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {

  final String title;

  const NavigationItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20.0),
      ),
    );
  }
}