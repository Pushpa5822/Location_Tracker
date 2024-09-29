import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MemberLocationScreen extends StatelessWidget {
  final String memberId;

  const MemberLocationScreen({super.key, required this.memberId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member Location'),
      ),
      body: const GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
              37.42796133580664, -122.085749655962), // Example coordinates
          zoom: 14,
        ),
        mapType: MapType.normal,
        // Add any other Google Map properties as needed
      ),
    );
  }
}
