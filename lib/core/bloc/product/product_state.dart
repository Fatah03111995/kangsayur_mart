import 'package:equatable/equatable.dart';
import 'package:kangsayur_mart/core/models/product_model.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductInitial extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductLoading extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductLoaded extends ProductState {
  final List<ProductModel> listProducts;

  const ProductLoaded({required this.listProducts});
  @override
  List<Object?> get props => [listProducts];
}

class ProductError extends ProductState {
  final String message;

  const ProductError({required this.message});
  @override
  List<Object?> get props => [message];
}
