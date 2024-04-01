import 'package:flutter/material.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Builder(builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "City",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  //Image.network(""),
                ],
              );
            }),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Min Temp",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Max Temp",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  "Temp",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ],
            ),
            const Text("Weather Description",
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ],
        ),
      ),
    ));
  }
}
