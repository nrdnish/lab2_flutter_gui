import 'package:flutter/material.dart';

class AppStyles {
  // We define our core colors here
  static Color primaryColor = const Color(0xFF687daf);
  static Color textColor = const Color(0xFF3b3b3b);

  // Style for "Book Tickets" (Large Title)
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  // Style for "Good morning" (Smaller Subtitle)
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}