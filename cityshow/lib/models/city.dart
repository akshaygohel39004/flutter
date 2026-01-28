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

  Map<String,dynamic> toJson(){
    return {
      'cityId':this.cityId,
      'cityName':this.cityName,
      'population':this.population,
      'totalFamilies':this.totalFamilies,
    };
  }

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      cityId: json['cityId']??'',
      cityName: json['cityName']??'unknown',
      population: json['population']??0,
      totalFamilies: json['totalFamilies']??0,
    );
  }
}
