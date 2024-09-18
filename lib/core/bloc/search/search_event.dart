part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchByQuery extends SearchEvent {
  final String query;

  const SearchByQuery({required this.query});
}
