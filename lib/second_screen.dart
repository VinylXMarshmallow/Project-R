import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps on Second Screen'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          setState(() {
            mapController = controller;
          });
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(
              37.7749, -122.4194), // Initial map position (San Francisco)
          zoom: 12.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('marker_1'),
            position: LatLng(37.7749, -122.4194), // Marker position
            infoWindow:
                InfoWindow(title: 'San Francisco'), // Marker info window
          ),
        },
      ),
    );
  }
}
