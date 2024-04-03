class ForecastWeatherModel {
  final String cityName;
  final DateTime date;
  final String image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;

  ForecastWeatherModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition});
  factory ForecastWeatherModel.fromJson(dynamic json) {
    return ForecastWeatherModel(
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        image: json['current']['condition']['icon'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        weatherCondition: json['current']['condition']['text']);
  }
}
class CurrentWeatherModel {
  final String cityName;
  final DateTime lastUpdated;
  final double tempCelsius;
  final double tempFahrenheit;
  final bool isDay;
  final String weatherCondition;
  final String weatherIconUrl;
  final int windDegree;
  final String windDirection;
  final double pressureMb;
  final double pressureIn;
  final double precipMm;
  final double precipIn;
  final int humidity;
  final int cloud;
  final double feelsLikeCelsius;
  final double feelsLikeFahrenheit;
  final double visibilityKm;
  final double visibilityMiles;
  final double uv;
  final double gustMph;
  final double gustKph;

  CurrentWeatherModel({
    required this.cityName,
    required this.lastUpdated,
    required this.tempCelsius,
    required this.tempFahrenheit,
    required this.isDay,
    required this.weatherCondition,
    required this.weatherIconUrl,
    required this.windDegree,
    required this.windDirection,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelsLikeCelsius,
    required this.feelsLikeFahrenheit,
    required this.visibilityKm,
    required this.visibilityMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    final location = json['location'];
    final current = json['current'];

    return CurrentWeatherModel(
      cityName: location['name'],
      lastUpdated: DateTime.parse(current['last_updated']),
      tempCelsius: current['temp_c'],
      tempFahrenheit: current['temp_f'],
      isDay: current['is_day'] == 1,
      weatherCondition: current['condition']['text'],
      weatherIconUrl: current['condition']['icon'],
      windDegree: current['wind_degree'],
      windDirection: current['wind_dir'],
      pressureMb: current['pressure_mb'],
      pressureIn: current['pressure_in'],
      precipMm: current['precip_mm'],
      precipIn: current['precip_in'],
      humidity: current['humidity'],
      cloud: current['cloud'],
      feelsLikeCelsius: current['feelslike_c'],
      feelsLikeFahrenheit: current['feelslike_f'],
      visibilityKm: current['vis_km'],
      visibilityMiles: current['vis_miles'],
      uv: current['uv'],
      gustMph: current['gust_mph'],
      gustKph: current['gust_kph'],
    );
  }
}
