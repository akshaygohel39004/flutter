import 'package:flutter/material.dart';
import '../models/city.dart';
import '../services/city_service.dart';

class CityProvider extends ChangeNotifier {
  final CityService _service = CityService();

  List<City> _cities = [];
  bool _isLoading = false;
  String? _error;

  List<City> get cities => _cities;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchCities() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    print("here1");
    try {
      print("here2");
      _cities = await _service.fetchCities();
      print("here3");
    } catch (e) {
      print("here4");
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
