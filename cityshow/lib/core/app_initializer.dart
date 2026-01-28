import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'api_config.dart';

class AppInitializer {
 static Future<void> init() async{
   await dotenv.load(fileName: ".env");
   ApiConfig.configureDependencies();
  }
}
