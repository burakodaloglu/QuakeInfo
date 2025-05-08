import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appbar_widgets.dart';

class EarthquakeMapScreen extends StatefulWidget {
  const EarthquakeMapScreen({super.key});

  @override
  State<EarthquakeMapScreen> createState() => _EarthquakeMapScreenState();
}

class _EarthquakeMapScreenState extends State<EarthquakeMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: "Harita"),
      body: Scaffold(
        backgroundColor: Colors.blue.shade50,
      ),
    );
  }
}
