part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final ForecastWeatherModel? weatherModel;

  WeatherSuccess({this.weatherModel});
}

class WeatherFailure extends WeatherState {
  final String message;

  WeatherFailure({required this.message});
}
