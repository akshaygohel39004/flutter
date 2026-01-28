import 'package:cityshow/models/city.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  const CityCard({super.key,required this.city});

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
