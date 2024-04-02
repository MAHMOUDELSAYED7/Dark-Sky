import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/widgets/custom_button.dart';

class FailureBody extends StatelessWidget {
  const FailureBody({super.key, this.message});
  final String? message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Spacer(flex: 4),
              const CustomButton(
                title: "Try Again",
              ),
              const Spacer(),
              Text(
                message ?? "Something went wrong, try again later!",
                style: const TextStyle(fontSize: 16),
              ),
              Center(
                child: Lottie.asset("assets/animations/falid.json"),
              ),
              const Spacer(flex: 2),
            ],
          )),
    );
  }
}
