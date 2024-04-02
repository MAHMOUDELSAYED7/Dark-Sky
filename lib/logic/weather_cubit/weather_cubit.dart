import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/api/weather_api.dart';
import '../../data/model/weather_model.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  Future<void> getWeatherData({required String cityName}) async {
    emit(WeatherLoading());
    try {
      WeatherModel? weatherModel =
          await WeatherWebService.getWeatherData(cityName: cityName);
      emit(WeatherSuccess(weatherModel: weatherModel));
    } catch (err) {
      emit(WeatherFailure(message: err.toString()));
    }
  }

  void refreshUi() {
    emit(WeatherInitial());
  }
}
