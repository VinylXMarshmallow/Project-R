import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'package:geolocator/geolocator.dart';

Future<void> requestPermission() async {
  final GeolocatorPlatform geolocator = GeolocatorPlatform.instance;
  final LocationPermission permission = await geolocator.requestPermission();

  if (permission == LocationPermission.denied) {
    // Handle the case where the user denies permission
  }
}

void main() {
  runApp(NavigationApp());
}

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      // Set the initial screen
    );
  }
}
