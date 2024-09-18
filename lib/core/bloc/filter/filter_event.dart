part of 'filter_bloc.dart';

class FilterEvent extends Equatable {
  const FilterEvent();

  @override
  List<Object> get props => [];
}

class Toggle extends FilterEvent {
  final Categories category;
  const Toggle({required this.category});
  @override
  List<Object> get props => [category];
}
