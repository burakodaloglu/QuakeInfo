import 'package:QuakeInfo/features/quakeinfo/presentation/pages/earthquake/pages/earthquake_list_screen.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/pages/earthquake/pages/earthquake_map_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EarthquakeScreen extends StatefulWidget {
  const EarthquakeScreen({super.key});

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
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.map),
            label: AppLocalizations.of(context)!.navMap,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            label: AppLocalizations.of(context)!.navList,
          ),
        ],
      ),
    );
  }
}