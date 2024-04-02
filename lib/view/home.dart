import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widgets/failure_body.dart';
import 'package:weather_app/widgets/intial_body.dart';

import '../logic/weather_cubit/weather_cubit.dart';
import '../widgets/loading_body.dart';
import '../widgets/sucess_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Search for Weather 🔍",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        body: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherLoading) {
              return const LoadingBody();
            }
            if (state is WeatherSuccess) {
              return SuccessBody(
                weatherModel: state.weatherModel,
              );
            }
            if (state is WeatherFailure) {
              return FailureBody(
                message: state.message,
              );
            }
            return const InitialBody();
          },
        ));
  }
}
