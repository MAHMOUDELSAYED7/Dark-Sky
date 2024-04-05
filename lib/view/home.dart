import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/helper/extentions.dart';
import 'package:weather_app/widgets/failure_body.dart';
import 'package:weather_app/widgets/intial_body.dart';

import '../logic/weather_cubit/weather_cubit.dart';
import '../widgets/loading_body.dart';
import '../widgets/sucess_body.dart';
import 'setting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = context.appBarTheme;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.theme.scaffoldBackgroundColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => context.push(const SettingsScreen()),
              icon: Icon(Icons.settings, color: context.iconTheme.color)),
          centerTitle: appBar.centerTitle,
          title: const Text("Search for Weather"),
          titleTextStyle: appBar.titleTextStyle,
          elevation: appBar.elevation,
          backgroundColor: appBar.backgroundColor,
          shape: appBar.shape,
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
