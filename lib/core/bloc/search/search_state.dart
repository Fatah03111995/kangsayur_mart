part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<ProductModel> searchedProduct;

  const SearchSuccess({required this.searchedProduct});
  @override
  List<Object> get props => [searchedProduct];
}

final class SearchFailed extends SearchState {
  final String message;

  const SearchFailed({required this.message});
  @override
  List<Object> get props => [message];
}
