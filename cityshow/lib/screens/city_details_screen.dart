import 'package:cityshow/widgets/city_card.dart';
import 'package:flutter/material.dart';
import '../models/city.dart';

class CityDetailScreen extends StatelessWidget {
  final City city;

  const CityDetailScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: Text(city.cityName),centerTitle: true,backgroundColor: Colors.blue,),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: CityCard(city: city)
          ),
        ),
      ),
    );
  }
}
