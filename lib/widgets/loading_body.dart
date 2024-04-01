import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingBody extends StatelessWidget {
  const LoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animations/loading.json"),
      ),
    );
  }
}
