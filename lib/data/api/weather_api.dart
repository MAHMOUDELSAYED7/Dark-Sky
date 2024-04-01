import 'dart:developer';
import 'package:dio/dio.dart';

import '../model/weather_model.dart';

class WeatherWebService {
  final Dio dio;
  WeatherWebService({required this.dio});
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apikey = 'e101844155ff41b097c191927232509';
  Future<WeatherModel> getWeatherData({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apikey&q=$cityName%20&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (err) {
      final errMessage = err.response?.data['error']['message'] ??
          "Oops there was an error, please try later";
      throw Exception(errMessage);
    } catch (err) {
      log(err.toString());
      throw Exception("Oops there was an error, please try later");
    }
  }
}
