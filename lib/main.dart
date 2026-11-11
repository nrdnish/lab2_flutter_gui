import 'package:flutter/material.dart';
import 'base/bottom_navbar.dart'; // We import our new file here!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ticket App',
      // We set our new BottomNavBar as the starting page
      home: BottomNavBar(),
    );
  }
}