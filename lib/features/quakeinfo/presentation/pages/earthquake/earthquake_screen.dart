import 'package:QuakeInfo/features/quakeinfo/presentation/pages/earthquake/pages/earthquake_list_screen.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/pages/earthquake/pages/earthquake_map_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EarthquakeScreen extends StatefulWidget {
  @override
  State<EarthquakeScreen> createState() => _EarthquakeScreenState();
}

class _EarthquakeScreenState extends State<EarthquakeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    EarthquakeMapScreen(),
    EarthquakeListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Harita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Liste',
          ),
        ],
      ),
    );
  }
}