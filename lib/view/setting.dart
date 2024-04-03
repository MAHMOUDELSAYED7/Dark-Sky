import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Choose Theme:'),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Switch(
                  value: state == ThemeState.dark,
                  onChanged: (_) => context.bloc<ThemeCubit>().toggleTheme(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
