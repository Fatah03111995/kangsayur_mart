import 'package:bloc/bloc.dart';
import 'package:kangsayur_mart/core/bloc/dashboard/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState());

  void changeIndex(int newIndex) {
    emit(DashboardState(index: newIndex));
  }
}
