// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_listing_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderListingStateCWProxy {
  OrderListingState isLoading(bool isLoading);

  OrderListingState items(List<OrderModel> items);

  OrderListingState page(int page);

  OrderListingState pageCount(int pageCount);

  OrderListingState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderListingState call({
    bool isLoading,
    List<OrderModel> items,
    int page,
    int pageCount,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderListingState.copyWith(...)` or call `instanceOfOrderListingState.copyWith.fieldName(value)` for a single field.
class _$OrderListingStateCWProxyImpl implements _$OrderListingStateCWProxy {
  const _$OrderListingStateCWProxyImpl(this._value);

  final OrderListingState _value;

  @override
  OrderListingState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  OrderListingState items(List<OrderModel> items) => call(items: items);

  @override
  OrderListingState page(int page) => call(page: page);

  @override
  OrderListingState pageCount(int pageCount) => call(pageCount: pageCount);

  @override
  OrderListingState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderListingState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageCount = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return OrderListingState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<OrderModel>,
      page: page == const $CopyWithPlaceholder() || page == null
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int,
      pageCount: pageCount == const $CopyWithPlaceholder() || pageCount == null
          ? _value.pageCount
          // ignore: cast_nullable_to_non_nullable
          : pageCount as int,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $OrderListingStateCopyWith on OrderListingState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderListingState.copyWith(...)` or `instanceOfOrderListingState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderListingStateCWProxy get copyWith =>
      _$OrderListingStateCWProxyImpl(this);
}
