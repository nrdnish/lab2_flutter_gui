// 1. This imports the core Flutter UI components (like colors, text, and layout tools)
import 'package:flutter/material.dart';

// The main function is the starting point of any Dart program.
void main() {
  runApp(
    // 1. wrap the app in MaterialApp
    MaterialApp(
      // 2. Use scaffold to give us a proper page layout
      home: Scaffold(
        // 3. The AppBar goes at the very top
        appBar: AppBar(
          title: const Text('My First GUI App'),
          backgroundColor: Colors.blue,
        ),
        // 4. the body is the main content area in the middle
        body: Center(
          child: Image.asset('assets/teno.png'),
        ),
      ),
    ),
  );
}