import 'package:flutter/material.dart';
import '../base/res/styles/app_styles.dart'; // 1. Import our new styles file!

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 2. Removed "const" from this Column because the styles inside are dynamic
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3, // 3. Using centralized style
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1, // 3. Using centralized style
                        ),
                      ],
                    ),
                    // The updated Image Container
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        // borderRadius curves the corners by 10 pixels
                        borderRadius: BorderRadius.circular(10),
                        // DecorationImage paints our image inside the box
                        image: const DecorationImage(
                          fit: BoxFit.cover, // Ensures the image fills the box perfectly
                          image: AssetImage("assets/images/teno.png"), // <-- CHANGE TO YOUR FILE NAME!
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("search icon"),
                    Text("empty space"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}