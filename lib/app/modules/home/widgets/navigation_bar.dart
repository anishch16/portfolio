import 'package:flutter/material.dart';

import 'navigation_item.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationItem(title: 'Home'),
          NavigationItem(title: 'About'),
          NavigationItem(title: 'Contact'),
        ],
      ),
    );
  }
}