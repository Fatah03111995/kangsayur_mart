import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kangsayur_mart/core/data/dummy.dart';
import 'package:kangsayur_mart/core/models/product_model.dart';
import 'package:kangsayur_mart/core/models/wishlist_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<LoadWishlist>(_onLoadWishList);
    on<Toggle>(_onToggle);
  }

  _onLoadWishList(LoadWishlist event, Emitter emit) {
    emit(WishlistLoading());
    try {
      //------------got the data from back end
      List<ProductModel> data = [
        ...Dummy.productsList.where(
            (product) => event.wishlist.productIds.contains(product.productId))
      ];
      emit(WishlistSuccessed(
          wishlist: data, productIds: event.wishlist.productIds));
    } catch (e) {
      emit(WishlistFailed(message: e.toString()));
    }
  }

  _onToggle(Toggle event, Emitter emit) {
    if (state is WishlistSuccessed) {
      List<ProductModel> listProduct = [
        ...(state as WishlistSuccessed).wishlist
      ];
      List<String> productIds = [...(state as WishlistSuccessed).productIds];

      if (productIds.contains(event.product.productId)) {
        productIds.remove(event.product.productId);
        listProduct.remove(event.product);
        emit(WishlistSuccessed(productIds: productIds, wishlist: listProduct));
      } else {
        productIds.add(event.product.productId);
        listProduct.add(event.product);
        emit(WishlistSuccessed(productIds: productIds, wishlist: listProduct));
      }
    }
  }
}
