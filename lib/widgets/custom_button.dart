import 'package:flutter/material.dart';
import 'package:dark_sky/constant/color.dart';
import 'package:dark_sky/helper/extentions.dart';
import 'package:dark_sky/logic/weather_cubit/weather_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: LightModeColor.primaryColor,
      ),
      onPressed: () => context.bloc<WeatherCubit>().refreshUi(),
      child: Text(title, style: context.textTheme.bodyMedium),
    );
  }
}
