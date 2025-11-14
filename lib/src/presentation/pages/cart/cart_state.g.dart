// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CartStateCWProxy {
  CartState isLoading(bool isLoading);

  CartState cart(CartModel? cart);

  CartState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CartState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CartState(...).copyWith(id: 12, name: "My name")
  /// ```
  CartState call({bool isLoading, CartModel? cart, ApiException? exception});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCartState.copyWith(...)` or call `instanceOfCartState.copyWith.fieldName(value)` for a single field.
class _$CartStateCWProxyImpl implements _$CartStateCWProxy {
  const _$CartStateCWProxyImpl(this._value);

  final CartState _value;

  @override
  CartState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  CartState cart(CartModel? cart) => call(cart: cart);

  @override
  CartState exception(ApiException? exception) => call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CartState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CartState(...).copyWith(id: 12, name: "My name")
  /// ```
  CartState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? cart = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return CartState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      cart: cart == const $CopyWithPlaceholder()
          ? _value.cart
          // ignore: cast_nullable_to_non_nullable
          : cart as CartModel?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $CartStateCopyWith on CartState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCartState.copyWith(...)` or `instanceOfCartState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CartStateCWProxy get copyWith => _$CartStateCWProxyImpl(this);
}
