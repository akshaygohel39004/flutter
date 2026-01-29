import 'package:cityshow/core/api_config.dart';
import 'package:cityshow/providers/city_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_app.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<CityProvider>(),
      child: const MyApp(),
    );
  }
}
