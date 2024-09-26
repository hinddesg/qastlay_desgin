import 'package:qastlay/features/shop/models/product_model.dart';

class CartItemModel {
  CartItemModel({required this.product, this.quantity = 1});
  final ProductModel product;
  int quantity;
  double get totalPrice => product.price * product.quantity;
}
