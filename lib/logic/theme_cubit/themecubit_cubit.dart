import 'package:bloc/bloc.dart';
part 'themecubit_state.dart';

class ThemecubitCubit extends Cubit<ThemeState> {
  ThemecubitCubit() : super(ThemeState.light);
  void toggleTheme() {
    if (state == ThemeState.light) {
      emit(ThemeState.dark);
    } else {
      emit(ThemeState.light);
    }
  }
}
