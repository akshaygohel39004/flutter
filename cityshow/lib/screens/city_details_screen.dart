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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            color: Colors.amber,
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    city.cityName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 12),
                  Text('ID: ${city.cityId}'),
                  Text('Population: ${city.population}'),
                  Text('Total Families: ${city.totalFamilies}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
