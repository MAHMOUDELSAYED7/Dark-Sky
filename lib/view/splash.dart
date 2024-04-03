import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/helper/extentions.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goTOHomeScreen();
  }

  void goTOHomeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      context.pushReplacement(const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Lottie.asset("assets/animations/splash.json"),
    ));
  }
}
