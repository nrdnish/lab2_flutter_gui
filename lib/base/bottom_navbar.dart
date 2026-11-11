import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

// 1. This is a StatefulWidget because the active tab will change
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // 2. This variable tracks which tab is currently selected (0 = Home)
  int _selectedIndex = 0;

  // 3. A list of basic screens to show depending on the selected tab
  final appScreens = [
    const HomeScreen(), // <--- Replaced the Center(Text("Home")) with this
    const Center(child: Text("Search")),
    const Center(child: Text("Tickets")),
    const Center(child: Text("Profile")),
  ];

  // 4. The function that runs when a user taps a bottom icon
  void _onItemTapped(int index) {
    // setState forces the screen to redraw with the new index
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
      ),
      // 5. The body displays whichever screen matches our selected index
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        showSelectedLabels: false, // Hides the text label on the active tab
        showUnselectedLabels: false,
        // 6. The 4 tabs using the Fluent icons we downloaded
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_24_regular),
            activeIcon: Icon(FluentIcons.home_24_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.search_24_regular),
            activeIcon: Icon(FluentIcons.search_24_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            // Replaced with a common alternative that usually exists in newer versions
            icon: Icon(FluentIcons.ticket_diagonal_24_regular),
            activeIcon: Icon(FluentIcons.ticket_diagonal_24_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.person_24_regular),
            activeIcon: Icon(FluentIcons.person_24_filled),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}