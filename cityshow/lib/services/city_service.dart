import 'dart:convert';

import 'package:cityshow/core/api_config.dart';
import 'package:cityshow/models/city.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';


class CityService {
  final Logger logger;
  CityService({required this.logger});
  Future<List<City>> fetchCities() async {
    final response = await http.get(Uri.parse(ApiConfig.baseUrl+'/api/cities'));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => City.fromJson(e)).toList();
    } else {
      logger.e("Response status code: "+response.statusCode.toString());
      logger.e("Response body: "+response.body);
      throw Exception('Failed to load cities');
    }
  }
}
