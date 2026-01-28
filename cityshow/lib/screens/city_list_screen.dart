import 'package:cityshow/views/empty_cities_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/city_provider.dart';
import 'city_details_screen.dart';

class CityListScreen extends StatelessWidget {
  const CityListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CityProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Cities'),backgroundColor: Colors.indigo,),
      body: Builder(
        builder: (_) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.error != null) {
            return Center(child: Text(provider.error!));
          }

          if (provider.cities.isEmpty){
            return EmptyCitiesView(fetchCities: provider.fetchCities);
          }

          return ListView.builder(
            itemCount: provider.cities.length,
            itemBuilder: (context, index) {
              final city = provider.cities[index];

              return ListTile(
                title: Text(city.cityName),
                subtitle: Text('Population: ${city.population}'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CityDetailScreen(city: city),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
