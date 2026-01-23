class City {
  final String cityId;
  final String cityName;
  final int population;
  final int totalFamilies;

  City({
    required this.cityId,
    required this.cityName,
    required this.population,
    required this.totalFamilies,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      cityId: json['cityId'],
      cityName: json['cityName'],
      population: json['population'],
      totalFamilies: json['totalFamilies'],
    );
  }
}
