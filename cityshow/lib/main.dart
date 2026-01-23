import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/city_provider.dart';
import 'screens/city_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CityProvider()..fetchCities(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const CityListScreen(),
    );
  }
}
