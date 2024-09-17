import 'package:bloc/bloc.dart';
import 'package:kangsayur_mart/core/bloc/product/product_event.dart';
import 'package:kangsayur_mart/core/bloc/product/product_state.dart';
import 'package:kangsayur_mart/core/data/dummy.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<FetchingProductData>(_fetchingProductData);
  }

  void _fetchingProductData(FetchingProductData event, Emitter emit) {
    emit(ProductLoading());
    try {
      //Fetching Data
      emit(ProductLoaded(listProducts: Dummy.productsList));
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }
}
