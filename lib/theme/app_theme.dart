import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

abstract class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Poppins',
      useMaterial3: true,
      brightness: Brightness.light,
      primarySwatch: LightModeColor.primaryColor,
      scaffoldBackgroundColor: LightModeColor.backgroundColor,
      appBarTheme: AppBarTheme(
        color: LightModeColor.primaryColor,
        iconTheme: const IconThemeData(color: LightModeColor.secondaryColor),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: LightModeColor.textWhite,
          fontSize: 20.sp,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.dm),
            bottomRight: Radius.circular(20.dm),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 20.sp,
            color: LightModeColor.textWhite,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          color: LightModeColor.textWhite,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          color: LightModeColor.textWhite,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 14.sp),
        filled: true,
        fillColor: LightModeColor.backgroundColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.dm),
              bottomRight: Radius.circular(20.dm)),
          borderSide:
              const BorderSide(width: 3, color: LightModeColor.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.dm),
              bottomRight: Radius.circular(20.dm)),
          borderSide:
              const BorderSide(width: 3, color: LightModeColor.primaryColor),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}
