import 'package:bloc/bloc.dart';
import 'package:kangsayur_mart/core/bloc/theme/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  void toggleTheme() {
    emit(ThemeState(isDark: !state.isDark));
  }
}
