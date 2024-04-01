import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    cubit = BlocProvider.of<WeatherCubit>(context);
    return TextField(
      onSubmitted: onfieldSubmitted,
      onTap: onTapInside,
      onTapOutside: onTapoutside,
      controller: _searchController,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: onSearch,
          icon: Icon(
            Icons.search,
            color: _isFocused ? Colors.blue : null,
            size: 25,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          borderSide: BorderSide(width: 3, color: Colors.blue),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          borderSide: BorderSide(width: 3, color: Colors.blue),
        ),
        hintText: "Enter city name ...",
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
      cursorColor: Colors.blue,
      keyboardType: TextInputType.name,
    );
  }
}
