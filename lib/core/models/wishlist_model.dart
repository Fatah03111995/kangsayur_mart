class WishlistModel {
  final String wishlistId;
  final String userId;
  final List<String> productIds;

  WishlistModel(
      {required this.wishlistId,
      required this.userId,
      required this.productIds});
}
