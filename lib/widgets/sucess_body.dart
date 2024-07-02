import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dark_sky/constant/color.dart';
import 'package:dark_sky/data/model/weather_model.dart';
import 'package:intl/intl.dart';
import 'package:dark_sky/helper/extentions.dart';
import 'package:dark_sky/widgets/custom_button.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({super.key, this.weatherModel});
  final ForecastWeatherModel? weatherModel;

  @override
  Widget build(BuildContext context) {
    String formattedDateMonthAndYear =
        DateFormat('yyyy-MM-dd').format(weatherModel!.date);
    String formattedDateTime = DateFormat('hh:mm a').format(weatherModel!.date);

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Spacer(),
          Container(
            padding: EdgeInsets.all(10.w),
            margin: EdgeInsets.all(15.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: LightModeColor.primaryColor,
                borderRadius: BorderRadius.circular(10.r)),
            width: context.width,
            height: context.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      weatherModel!.cityName,
                      style: context.textTheme.bodyLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Last Updated:",
                            style: context.textTheme.bodySmall),
                        SizedBox(height: 3.h),
                        Text(formattedDateTime,
                            style: context.textTheme.bodySmall),
                        SizedBox(height: 3.h),
                        Text(formattedDateMonthAndYear,
                            style: context.textTheme.bodySmall),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'min: ${weatherModel!.minTemp}',
                          style: context.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          'max: ${weatherModel!.maxTemp}',
                          style: context.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${weatherModel!.temp}',
                          style: context.textTheme.bodyLarge!
                              .copyWith(fontSize: 38.spMin),
                        ),
                        Text(' °C', style: context.textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(weatherModel!.weatherCondition,
                        style: context.textTheme.bodyLarge!
                            .copyWith(fontSize: 36.spMin),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    Image.network(
                      "https:${weatherModel!.image}",
                      width: 80,
                      height: 80,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          const CustomButton(
            title: "Find More Weather",
          ),
          const Spacer(flex: 2),
        ],
      ),
    ));
  }
}
