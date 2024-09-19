part of 'wishlist_bloc.dart';

sealed class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object> get props => [];
}

final class WishlistInitial extends WishlistState {}

final class WishlistLoading extends WishlistState {}

final class WishlistSuccessed extends WishlistState {
  final List<ProductModel> wishlist;
  final List<String> productIds;

  const WishlistSuccessed({required this.wishlist, required this.productIds});
  @override
  List<Object> get props => [wishlist, productIds];
}

final class WishlistFailed extends WishlistState {
  final String message;

  const WishlistFailed({required this.message});
}
