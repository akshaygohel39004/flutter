import 'dart:convert';

import 'package:cityshow/core/api_config.dart';
import 'package:cityshow/models/city.dart';
import 'package:http/http.dart' as http;


class CityService {
  Future<List<City>> fetchCities() async {
    print("here 5");
    print(ApiConfig.baseUrl);
    final response = await http.get(Uri.parse(ApiConfig.baseUrl));
    print(response);
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => City.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load cities');
    }
  }
}
