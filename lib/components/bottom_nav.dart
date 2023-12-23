import 'package:buzz_bites/screens/screens.dart';

import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.only(left: 50),
              child: IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                  icon: const Icon(Icons.home)),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, ExploreScreen.routeName),
                icon: const Icon(Icons.search)),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.only(right: 50),
              child: IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, ProfileScreen.routeName),
                  icon: const Icon(Icons.person)),
            ),
            label: 'Profile',
          ),
        ]);
  }
}
