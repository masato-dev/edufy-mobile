// lib/src/presentation/pages/cart/cart_state.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/cart/cart_model.dart';

part 'cart_state.g.dart';

@CopyWith()
class CartState extends Equatable {
  final bool isLoading;
  final CartModel? cart;
  final ApiException? exception;

  const CartState({
    this.isLoading = false,
    this.cart,
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        cart,
        exception,
      ];
}
