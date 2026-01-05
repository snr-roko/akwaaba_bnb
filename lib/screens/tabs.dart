import 'package:akwaaba_bnb/data/sample_accommodations.dart';
import 'package:akwaaba_bnb/models/accommodation_model.dart';
import 'package:akwaaba_bnb/screens/explore.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen> {
  int _selectedTabIndex = 0;
  final List<Widget> _screens = [
    ExploreScreen(accommodations: dummyAccommodations),
    ExploreScreen(
      accommodations: dummyAccommodations
          .where((accommodation) => accommodation.accommodationType == "Studio")
          .toList(),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text("Properties"),
      ),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text("Bookings"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
          });
        },
        iconSize: 35.0,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        currentIndex: _selectedTabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "Properties"),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: "Bookings",
          ),
        ],
      ),
    );
  }
}
