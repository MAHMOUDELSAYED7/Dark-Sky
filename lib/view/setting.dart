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
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.iconTheme.color),
        ),
        title: Text('Settings', style: context.textTheme.bodyLarge),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: context.height,
            width: context.width > 800 ? context.width / 2 : null,
            child: Column(
              children: [
                SizedBox(height: 10.h),
                BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, state) {
                    return Card(
                      margin: EdgeInsets.all(10.w),
                      color: state == ThemeState.dark
                          ? DarkModeColor.secondaryColor.withOpacity(0.2)
                          : DarkModeColor.secondaryColor.shade200,
                      child: SwitchListTile(
                        title: Text(
                          'Dark Mode',
                          style: context.textTheme.displaySmall
                              ?.copyWith(fontSize: 14.spMin),
                        ),
                        value: state == ThemeState.dark,
                        onChanged: (_) =>
                            context.read<ThemeCubit>().toggleTheme(),
                      ),
                    );
                  },
                ),
                const Spacer(),
                Text(
                  'Theme mode',
                  style: context.textTheme.displaySmall?.copyWith(fontSize: 24),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
