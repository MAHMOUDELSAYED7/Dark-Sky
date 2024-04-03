import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

abstract class AppTheme {
  //!! LIGHT THEME
  static ThemeData get lightTheme {
    return ThemeData(
      iconTheme: const IconThemeData(color: LightModeColor.backgroundColor),
      switchTheme: SwitchThemeData(
        trackOutlineColor:
            MaterialStateProperty.all(LightModeColor.primaryColor),
        thumbColor: MaterialStateProperty.all(LightModeColor.primaryColor),
        trackColor: MaterialStateProperty.all(LightModeColor.backgroundColor),
        thumbIcon: MaterialStateProperty.all(const Icon(
          Icons.light_mode,
          color: LightModeColor.backgroundColor,
        )),
      ),
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
        displaySmall: TextStyle(
          fontSize: 12.sp,
          color: LightModeColor.textBlack,
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

  //!! DARK THEME
  static ThemeData get darkTheme {
    return ThemeData(
      switchTheme: SwitchThemeData(
        trackOutlineColor:
            MaterialStateProperty.all(DarkModeColor.primaryColor),
        thumbColor: MaterialStateProperty.all(DarkModeColor.primaryColor),
        trackColor: MaterialStateProperty.all(DarkModeColor.backgroundColor),
        thumbIcon: MaterialStateProperty.all(const Icon(
          Icons.dark_mode,
          color: DarkModeColor.backgroundColor,
        )),
      ),
      iconTheme: const IconThemeData(color: DarkModeColor.backgroundColor),
      fontFamily: 'Poppins',
      useMaterial3: true,
      brightness: Brightness.dark,
      primarySwatch: DarkModeColor.primaryColor,
      scaffoldBackgroundColor: DarkModeColor.backgroundColor,
      appBarTheme: AppBarTheme(
        color: DarkModeColor.primaryColor,
        iconTheme: const IconThemeData(color: DarkModeColor.secondaryColor),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: DarkModeColor.textBlack,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold),
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
            color: DarkModeColor.textBlack,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          color: DarkModeColor.textBlack,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          color: DarkModeColor.textBlack,
        ),
        displaySmall: TextStyle(
          fontSize: 12.sp,
          color: DarkModeColor.textWhite,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 14.sp),
        filled: true,
        fillColor: DarkModeColor.backgroundColor.withBlue(20),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.dm),
              bottomRight: Radius.circular(20.dm)),
          borderSide:
              const BorderSide(width: 3, color: DarkModeColor.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.dm),
              bottomRight: Radius.circular(20.dm)),
          borderSide:
              const BorderSide(width: 3, color: DarkModeColor.primaryColor),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      ),
    );
  }
}
