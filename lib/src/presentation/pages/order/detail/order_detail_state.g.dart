// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderDetailStateCWProxy {
  OrderDetailState isLoading(bool isLoading);

  OrderDetailState order(OrderModel? order);

  OrderDetailState exception(ApiException? exception);

  OrderDetailState isCancelling(bool isCancelling);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderDetailState call({
    bool isLoading,
    OrderModel? order,
    ApiException? exception,
    bool isCancelling,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderDetailState.copyWith(...)` or call `instanceOfOrderDetailState.copyWith.fieldName(value)` for a single field.
class _$OrderDetailStateCWProxyImpl implements _$OrderDetailStateCWProxy {
  const _$OrderDetailStateCWProxyImpl(this._value);

  final OrderDetailState _value;

  @override
  OrderDetailState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  OrderDetailState order(OrderModel? order) => call(order: order);

  @override
  OrderDetailState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  OrderDetailState isCancelling(bool isCancelling) =>
      call(isCancelling: isCancelling);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderDetailState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
    Object? isCancelling = const $CopyWithPlaceholder(),
  }) {
    return OrderDetailState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as OrderModel?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
      isCancelling:
          isCancelling == const $CopyWithPlaceholder() || isCancelling == null
          ? _value.isCancelling
          // ignore: cast_nullable_to_non_nullable
          : isCancelling as bool,
    );
  }
}

extension $OrderDetailStateCopyWith on OrderDetailState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderDetailState.copyWith(...)` or `instanceOfOrderDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderDetailStateCWProxy get copyWith => _$OrderDetailStateCWProxyImpl(this);
}
