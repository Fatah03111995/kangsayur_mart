class CartModel {
  final String cartId;
  final String userId;
  final List<CartItem> items;

  CartModel({required this.cartId, required this.userId, required this.items});
}

class CartItem {
  final String productId;
  final double quantity;

  CartItem({
    required this.productId,
    required this.quantity,
  });
}
