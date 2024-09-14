class PurchaseModel {
  final String purchaseId;
  final String orderId;
  final String paymentMethod;
  final bool paymentStatus;
  final DateTime paymentDate;

  PurchaseModel(
      {required this.purchaseId,
      required this.orderId,
      required this.paymentMethod,
      required this.paymentStatus,
      required this.paymentDate});
}
