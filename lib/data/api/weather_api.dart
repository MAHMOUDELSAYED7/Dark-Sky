import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/constant/string.dart';

import '../model/weather_model.dart';

class WeatherWebService {
  static Dio dio = Dio();
  static Future<ForecastWeatherModel> getWeatherData({required String cityName}) async {
    try {
      Response response = await dio.get(MyApiUrl.baseUrl, queryParameters: {
        'key': MyApiUrl.apikey,
        'q': cityName,
      });
      log(response.data.toString());
      ForecastWeatherModel weatherModel = ForecastWeatherModel.fromJson(response.data);
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
