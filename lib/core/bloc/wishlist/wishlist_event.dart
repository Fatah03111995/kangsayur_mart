// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'wishlist_bloc.dart';

sealed class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class LoadWishlist extends WishlistEvent {
  final WishlistModel wishlist;

  const LoadWishlist({required this.wishlist});
}

class Toggle extends WishlistEvent {
  final ProductModel product;
  const Toggle({
    required this.product,
  });
}
