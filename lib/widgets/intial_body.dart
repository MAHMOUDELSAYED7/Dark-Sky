import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/helper/extentions.dart';
import 'package:weather_app/widgets/custom_search_bar.dart';

class InitialBody extends StatelessWidget {
  const InitialBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
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
          Text("There is no weather 😔 start Searching now!",
              textAlign: TextAlign.center,
              style:
                  context.textTheme.bodyMedium?.copyWith(color: Colors.black)),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
