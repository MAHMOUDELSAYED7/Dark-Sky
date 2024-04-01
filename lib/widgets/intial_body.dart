import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/widgets/custom_search_bar.dart';

class InitialBody extends StatelessWidget {
  const InitialBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const CustomSearchBar(),
          const Spacer(flex: 3),
          Lottie.asset(
            animate: true,
            fit: BoxFit.scaleDown,
            "assets/animations/search.json",
          ),
          const Spacer(flex: 2),
          const Text(
            "There is no weather 😔 start Searching now!",
            style: TextStyle(fontSize: 16),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
