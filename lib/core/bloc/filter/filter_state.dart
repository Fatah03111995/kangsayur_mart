part of 'filter_bloc.dart';

class FilterState extends Equatable {
  final List<Categories> selectedCategories;
  const FilterState({this.selectedCategories = const []});

  @override
  List<Object> get props => [selectedCategories];
}
