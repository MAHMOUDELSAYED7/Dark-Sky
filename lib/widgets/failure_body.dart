import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FailureBody extends StatelessWidget {
  const FailureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Spacer(flex: 4),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => Navigator.of(context).canPop(),
                child: const Text(
                  "Retry",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const Spacer(),
              const Text(
                "Something went wrong, try again later!",
                style: TextStyle(fontSize: 16),
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
