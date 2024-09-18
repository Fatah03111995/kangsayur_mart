import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kangsayur_mart/core/data/dummy.dart';

import '../../models/product_model.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchByQuery>((event, emit) {
      emit(SearchLoading());
      //Request Data
      List<ProductModel> fetchedData = Dummy.productsList;
      List<ProductModel> searchedProduct = [
        ...fetchedData.where((product) {
          String name = product.name.toLowerCase();
          return name.contains(event.query.toLowerCase());
        })
      ];

      emit(SearchSuccess(searchedProduct: searchedProduct));
    });
  }
}
