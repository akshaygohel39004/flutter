import 'package:cityshow/providers/city_provider.dart';
import 'package:cityshow/services/city_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final getIt = GetIt.instance;
class ApiConfig {
  static final String baseUrl = dotenv.get('BASE_URL',fallback: 'http://192.168.1.59:4000');

  static void configureDependencies() {

    //Logger Registration
    getIt.registerLazySingleton(()=>Logger());
    //CityService Registration
    getIt.registerLazySingleton<CityService>(()=>CityService(logger: getIt<Logger>()));
    //CityProvider Registration
    getIt.registerLazySingleton(()=>CityProvider(logger: getIt<Logger>(),service: getIt<CityService>()));


  }
}


