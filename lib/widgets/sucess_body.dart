import 'package:flutter/material.dart';
import 'package:weather_app/data/model/weather_model.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/widgets/custom_button.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({super.key, this.weatherModel});
  final WeatherModel? weatherModel;

  @override
  Widget build(BuildContext context) {
    String formattedDateMonthAndYear =
        DateFormat('yyyy-MM-dd').format(weatherModel!.date);
    String formattedDateTime = DateFormat('hh:mm a').format(weatherModel!.date);

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      weatherModel!.cityName,
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Column(
                      children: [
                        Text(
                          formattedDateTime,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          formattedDateMonthAndYear,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          weatherModel!.minTemp.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          weatherModel!.maxTemp.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Text(
                      weatherModel!.temp.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ],
                ),
                Text(weatherModel!.weatherCondition,
                    style: const TextStyle(color: Colors.white, fontSize: 24)),
              ],
            ),
          ),
          const Spacer(),
          const CustomButton(
            title: "Find More Weather 🔍",
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
