import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kangsayur_mart/core/models/categories.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(const FilterState()) {
    on<Toggle>(_toggle);
  }

  void _toggle(Toggle event, Emitter emit) {
    if (state.selectedCategories.contains(event.category)) {
      List<Categories> selectedCategories = [...state.selectedCategories];

      selectedCategories.remove(event.category);
      emit(FilterState(selectedCategories: selectedCategories));
    } else {
      List<Categories> selectedCategories = [...state.selectedCategories];
      selectedCategories.add(event.category);
      emit(FilterState(selectedCategories: selectedCategories));
    }
  }
}
