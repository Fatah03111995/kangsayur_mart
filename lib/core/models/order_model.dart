class OrderModel {
  final String orderId;
  final String userId;
  final List<OrderItem> items;
  final double totalPrice;
  final StatusOrder status;
  final DateTime orderDate;

  OrderModel(
      {required this.orderId,
      required this.userId,
      required this.items,
      required this.totalPrice,
      required this.status,
      required this.orderDate});
}

enum StatusOrder { canceled, finished, processed }

class OrderItem {
  final String productId;
  final double quantity;
  final double price;

  OrderItem({
    required this.productId,
    required this.quantity,
    required this.price,
  });
}
