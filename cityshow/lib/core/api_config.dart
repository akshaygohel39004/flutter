import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static final String baseUrl = dotenv.get('BASE_URL',fallback: 'http://192.168.1.59:4000');
}
