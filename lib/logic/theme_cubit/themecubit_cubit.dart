import 'package:bloc/bloc.dart';

import '../../helper/cache.dart';
part 'themecubit_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(CacheData.getdata(key: 'isDarkMode') ?? false
            ? ThemeState.dark
            : ThemeState.light);
  Future<void> toggleTheme() async {
    final newTheme =
        state == ThemeState.light ? ThemeState.dark : ThemeState.light;
    await CacheData.setData(
        key: 'isDarkMode', value: newTheme == ThemeState.dark);
    emit(newTheme);
  }
}
