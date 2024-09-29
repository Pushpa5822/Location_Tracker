import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/location.dart';

class RouteScreen extends StatelessWidget {
  final Location startLocation;
  final Location stopLocation;

  const RouteScreen(
      {super.key, required this.startLocation, required this.stopLocation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Details')),
      body: Column(
        children: [
          Text('Start: ${startLocation.address}'),
          Text('Stop: ${stopLocation.address}'),
          const Text('Total Distance: X km'),
          const Text('Total Duration: Y minutes'),
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(startLocation.latitude, startLocation.longitude),
                zoom: 14,
              ),
              polylines: {
                Polyline(
                  polylineId: const PolylineId('route'),
                  points: [
                    LatLng(startLocation.latitude, startLocation.longitude),
                    LatLng(stopLocation.latitude, stopLocation.longitude),
                  ],
                  color: Colors.blue,
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}
