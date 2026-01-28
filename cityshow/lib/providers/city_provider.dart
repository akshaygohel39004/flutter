import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
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
    Logger logger=Logger();

    logger.i("loading starts");
    _isLoading = true;
    _error = null;
    notifyListeners();


    try {

      logger.i("start calling to fetchCities service method");
      _cities = await _service.fetchCities();
      logger.i("fetchCities service method call successfully  completed");
    } catch (e) {
      logger.e("error: "+e.toString());
      _error = e.toString();
    }

    _isLoading = false;
    logger.i("loading stops");
    notifyListeners();
  }
}
