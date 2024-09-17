import 'package:kangsayur_mart/core/models/categories.dart';

class ProductModel {
  final String productId;
  final String name;
  final String description;
  final String imageUrl;
  final Categories category;
  final double price;
  final double? salePrice;
  final double stock;
  final bool isOnSale;
  final String unit;

  ProductModel({
    required this.productId,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.price,
    this.salePrice,
    required this.stock,
    this.isOnSale = false,
    this.unit = 'Kg',
  });
}
