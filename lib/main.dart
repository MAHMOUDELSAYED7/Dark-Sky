import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dark_sky/logic/theme_cubit/themecubit_cubit.dart';
import 'helper/cache.dart';
import 'logic/weather_cubit/weather_cubit.dart';
import 'theme/app_theme.dart';
import 'view/splash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await CacheData.cacheDataInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => WeatherCubit(),
              ),
              BlocProvider(
                create: (context) => ThemeCubit(),
              ),
            ],
            child: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return MaterialApp(
                  builder: (context, widget) {
                    final mediaQueryData = MediaQuery.of(context);
                    final scaledMediaQueryData = mediaQueryData.copyWith(
                      textScaler: TextScaler.noScaling,
                    );
                    return MediaQuery(
                      data: scaledMediaQueryData,
                      child: widget!,
                    );
                  },
                  debugShowCheckedModeBanner: false,
                  title: 'Weather App',
                  home: const SplashScreen(),
                  theme: state == ThemeState.light
                      ? AppTheme.lightTheme
                      : AppTheme.darkTheme,
                );
              },
            ),
          );
        });
  }
}
