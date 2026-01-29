import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cityshow/core/api_config.dart';
import 'package:cityshow/models/city.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import '../exceptions/api_exception.dart';
import '../exceptions/dataformate_exception.dart';
import '../exceptions/network_exception.dart';
import '../exceptions/server_exception.dart';
import '../exceptions/unauthorized_exception.dart';

class CityService {
  final Logger logger;

  CityService({required this.logger});

  Future<List<City>> fetchCities() async {
    try {
      final response = await _makeRequest();

      _handleResponseStatus(response);

      return _parseCities(response.body);

    } catch (e) {
      _handleException(e);
      rethrow;
    }
  }
  Future<http.Response> _makeRequest() async {
    return http
        .get(Uri.parse('${ApiConfig.baseUrl}/api/cities'))
        .timeout(const Duration(seconds: 15));
  }

  void _handleResponseStatus(http.Response response) {
    if (response.statusCode == 200) return;

    if (response.statusCode == 401) {
      throw UnauthorizedException();
    }

    if (response.statusCode >= 500) {
      throw ServerException();
    }

    throw ApiException("Unexpected Error: ${response.statusCode}",);
  }

  List<City> _parseCities(String responseBody) {
    try {
      final List data = jsonDecode(responseBody);

      return data
          .map((e) => City.fromJson(e))
          .toList();

    } on FormatException catch (e) {
      logger.e("JSON Format Error: $e");
      throw DataFormatException();
    }
  }

  void _handleException(Object error) {
    if (error is SocketException) {
      logger.e("No Internet Connection");
      throw NetworkException();
    }

    if (error is TimeoutException) {
      logger.e("Request Timeout");
      throw ApiException("Request Timeout");
    }

    if (error is ApiException) {
      logger.e(error.message);
      throw error;
    }

    logger.e("Unknown Error: $error");
    throw ApiException("Something went wrong");
  }
}
