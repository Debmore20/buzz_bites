import 'package:buzz_bites/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BuzzBitesApp());
}

class BuzzBitesApp extends StatelessWidget {
  const BuzzBitesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 248, 248, 248)),
          useMaterial3: true,
        ),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          ExploreScreen.routeName: (context) => const ExploreScreen(),
          ProfileScreen.routeName: (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
