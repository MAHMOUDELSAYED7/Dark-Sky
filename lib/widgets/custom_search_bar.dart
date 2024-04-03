import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/constant/color.dart';
import 'package:weather_app/helper/extentions.dart';
import '../logic/weather_cubit/weather_cubit.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late TextEditingController _searchController;
  late WeatherCubit cubit;
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void onfieldSubmitted(String value) {
    if (value.isNotEmpty) {
      cubit.getWeatherData(cityName: value.trim());
    }

    _searchController.clear();
  }

  void onTapInside() {
    _isFocused = true;
    setState(() {});
  }

  void onTapoutside(_) {
    _isFocused = false;
    setState(() {});
  }

  void onSearch() {
    if (_searchController.text.isNotEmpty) {
      onfieldSubmitted(_searchController.text);
    }
    _searchController.clear();
  }

  bool _isFocused = false;
  @override
  Widget build(BuildContext context) {
    cubit = context.bloc<WeatherCubit>();
    final inputDeco = context.inputDecoration;
    return TextField(
      style: context.textTheme.displaySmall,
      onSubmitted: onfieldSubmitted,
      onTap: onTapInside,
      onTapOutside: onTapoutside,
      controller: _searchController,
      maxLength: 32,
      decoration: InputDecoration(
        counter: Container(),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: onSearch,
            icon: Icon(
              Icons.search,
              color: _isFocused ? LightModeColor.primaryColor : null,
              size: 25.r,
            ),
          ),
        ),
        filled: inputDeco.filled,
        fillColor: inputDeco.fillColor,
        focusedBorder: inputDeco.focusedBorder,
        enabledBorder: inputDeco.enabledBorder,
        hintText: "Enter city name ...",
        contentPadding: inputDeco.contentPadding,
      ),
      cursorColor: LightModeColor.primaryColor,
      keyboardType: TextInputType.name,
    );
  }
}
