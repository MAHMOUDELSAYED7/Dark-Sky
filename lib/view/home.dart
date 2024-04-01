import 'package:flutter/material.dart';
import 'package:weather_app/data/api/weather_api.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            ElevatedButton(
              child: const Text("Fetch Weather"),
              onPressed: () {
                WeatherWebService.getWeatherData(cityName: "cairo");
              },
            )
          ],
        ),
      ),
    );
  }
}
