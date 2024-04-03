import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/constant/color.dart';
import 'package:weather_app/helper/extentions.dart';

import '../logic/theme_cubit/themecubit_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.goBack(),
            icon: Icon(Icons.arrow_back, color: context.iconTheme.color)),
        title: Text('Settings', style: context.textTheme.bodyLarge),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Choose Theme:'),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Card(
                  margin: EdgeInsets.all(10.w),
                  color: DarkModeColor.secondaryColor.withOpacity(0.2),
                  child: SwitchListTile(
                    title: Text('Dark Mode',
                        style: context.textTheme.displaySmall
                            ?.copyWith(fontSize: 14.sp)),
                    value: state == ThemeState.dark,
                    onChanged: (_) => context.bloc<ThemeCubit>().toggleTheme(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
