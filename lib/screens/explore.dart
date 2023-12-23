import 'package:buzz_bites/components/bottom_nav.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  static const routeName = '/explore';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomNav(index: 1),
    );
  }
}