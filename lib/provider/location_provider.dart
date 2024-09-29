import 'package:flutter/material.dart';
import '../models/location.dart';

class LocationProvider with ChangeNotifier {
  final List<Location> _locations = [];

  List<Location> get locations => _locations;

  void addLocation(Location location) {
    _locations.add(location);
    notifyListeners();
  }

  void loadLocationsForDate(DateTime date) {
    // Logic to fetch data based on selected date
    // Notify listeners after data is fetched
    notifyListeners();
  }
}
