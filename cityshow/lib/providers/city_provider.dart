import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../models/city.dart';
import '../services/city_service.dart';

class CityProvider extends ChangeNotifier {
  final CityService _service;
  final Logger _logger;
  CityProvider({required CityService service,required Logger logger}):_service=service,_logger=logger;

  List<City> _cities = [];
  bool _isLoading = false;
  String? _error;

  List<City> get cities => _cities;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchCities() async {

    _logger.i("loading starts");
    _isLoading = true;
    _error = null;
    notifyListeners();


    try {

      _logger.i("start calling to fetchCities service method");
      _cities = await _service.fetchCities();
      _logger.i("fetchCities service method call successfully  completed");
    } catch (e) {
      _logger.e("error: "+e.toString());
      _error = e.toString();
    }

    _isLoading = false;
    _logger.i("loading stops");
    notifyListeners();
  }
}
