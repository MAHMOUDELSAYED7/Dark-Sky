import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

abstract class AppTheme {
  //!! LIGHT THEME
  static ThemeData get lightTheme {
    return ThemeData(
      iconTheme: const IconThemeData(color: LightModeColor.backgroundColor),
      switchTheme: const SwitchThemeData(
        trackOutlineColor:
           WidgetStatePropertyAll(LightModeColor.primaryColor),
        thumbColor:WidgetStatePropertyAll(LightModeColor.primaryColor),
        trackColor:WidgetStatePropertyAll(LightModeColor.backgroundColor),
        thumbIcon: WidgetStatePropertyAll(Icon(
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
          fontSize: 20.spMin,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 20.spMin,
            color: LightModeColor.textWhite,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
          fontSize: 14.spMin,
          color: LightModeColor.textWhite,
        ),
        bodySmall: TextStyle(
          fontSize: 12.spMin,
          color: LightModeColor.textWhite,
        ),
        displaySmall: TextStyle(
          fontSize: 12.spMin,
          color: LightModeColor.textBlack,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 14.spMin),
        filled: true,
        fillColor: LightModeColor.backgroundColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r)),
          borderSide:
              const BorderSide(width: 3, color: LightModeColor.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r)),
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
      switchTheme: const SwitchThemeData(
        trackOutlineColor: WidgetStatePropertyAll(DarkModeColor.primaryColor),
        trackColor: WidgetStatePropertyAll(DarkModeColor.backgroundColor),
        thumbColor: WidgetStatePropertyAll(DarkModeColor.primaryColor),
        thumbIcon: WidgetStatePropertyAll(Icon(
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
            fontSize: 20.spMin,
            fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 20.spMin,
            color: DarkModeColor.textBlack,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
          fontSize: 14.spMin,
          color: DarkModeColor.textBlack,
        ),
        bodySmall: TextStyle(
          fontSize: 12.spMin,
          color: DarkModeColor.textBlack,
        ),
        displaySmall: TextStyle(
          fontSize: 12.spMin,
          color: DarkModeColor.textWhite,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 14.spMin),
        filled: true,
        fillColor: DarkModeColor.backgroundColor.withBlue(20),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r)),
          borderSide:
              const BorderSide(width: 3, color: DarkModeColor.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r)),
          borderSide:
              const BorderSide(width: 3, color: DarkModeColor.primaryColor),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20),
      ),
    );
  }
}
