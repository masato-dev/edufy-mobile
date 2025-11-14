// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderModelCWProxy {
  OrderModel id(int? id);

  OrderModel orderNumber(String? orderNumber);

  OrderModel userId(int? userId);

  OrderModel cartId(int? cartId);

  OrderModel status(String? status);

  OrderModel currency(String? currency);

  OrderModel subtotal(double? subtotal);

  OrderModel discountTotal(double? discountTotal);

  OrderModel taxTotal(double? taxTotal);

  OrderModel total(double? total);

  OrderModel paymentMethod(String? paymentMethod);

  OrderModel paymentStatus(String? paymentStatus);

  OrderModel note(String? note);

  OrderModel meta(Map<String, dynamic>? meta);

  OrderModel user(UserModel? user);

  OrderModel cart(CartModel? cart);

  OrderModel items(List<OrderItemModel>? items);

  OrderModel payments(List<PaymentModel>? payments);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderModel(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderModel call({
    int? id,
    String? orderNumber,
    int? userId,
    int? cartId,
    String? status,
    String? currency,
    double? subtotal,
    double? discountTotal,
    double? taxTotal,
    double? total,
    String? paymentMethod,
    String? paymentStatus,
    String? note,
    Map<String, dynamic>? meta,
    UserModel? user,
    CartModel? cart,
    List<OrderItemModel>? items,
    List<PaymentModel>? payments,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderModel.copyWith(...)` or call `instanceOfOrderModel.copyWith.fieldName(value)` for a single field.
class _$OrderModelCWProxyImpl implements _$OrderModelCWProxy {
  const _$OrderModelCWProxyImpl(this._value);

  final OrderModel _value;

  @override
  OrderModel id(int? id) => call(id: id);

  @override
  OrderModel orderNumber(String? orderNumber) => call(orderNumber: orderNumber);

  @override
  OrderModel userId(int? userId) => call(userId: userId);

  @override
  OrderModel cartId(int? cartId) => call(cartId: cartId);

  @override
  OrderModel status(String? status) => call(status: status);

  @override
  OrderModel currency(String? currency) => call(currency: currency);

  @override
  OrderModel subtotal(double? subtotal) => call(subtotal: subtotal);

  @override
  OrderModel discountTotal(double? discountTotal) =>
      call(discountTotal: discountTotal);

  @override
  OrderModel taxTotal(double? taxTotal) => call(taxTotal: taxTotal);

  @override
  OrderModel total(double? total) => call(total: total);

  @override
  OrderModel paymentMethod(String? paymentMethod) =>
      call(paymentMethod: paymentMethod);

  @override
  OrderModel paymentStatus(String? paymentStatus) =>
      call(paymentStatus: paymentStatus);

  @override
  OrderModel note(String? note) => call(note: note);

  @override
  OrderModel meta(Map<String, dynamic>? meta) => call(meta: meta);

  @override
  OrderModel user(UserModel? user) => call(user: user);

  @override
  OrderModel cart(CartModel? cart) => call(cart: cart);

  @override
  OrderModel items(List<OrderItemModel>? items) => call(items: items);

  @override
  OrderModel payments(List<PaymentModel>? payments) => call(payments: payments);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderModel(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderNumber = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? cartId = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? currency = const $CopyWithPlaceholder(),
    Object? subtotal = const $CopyWithPlaceholder(),
    Object? discountTotal = const $CopyWithPlaceholder(),
    Object? taxTotal = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? paymentMethod = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? meta = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? cart = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? payments = const $CopyWithPlaceholder(),
  }) {
    return OrderModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      orderNumber: orderNumber == const $CopyWithPlaceholder()
          ? _value.orderNumber
          // ignore: cast_nullable_to_non_nullable
          : orderNumber as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int?,
      cartId: cartId == const $CopyWithPlaceholder()
          ? _value.cartId
          // ignore: cast_nullable_to_non_nullable
          : cartId as int?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
      currency: currency == const $CopyWithPlaceholder()
          ? _value.currency
          // ignore: cast_nullable_to_non_nullable
          : currency as String?,
      subtotal: subtotal == const $CopyWithPlaceholder()
          ? _value.subtotal
          // ignore: cast_nullable_to_non_nullable
          : subtotal as double?,
      discountTotal: discountTotal == const $CopyWithPlaceholder()
          ? _value.discountTotal
          // ignore: cast_nullable_to_non_nullable
          : discountTotal as double?,
      taxTotal: taxTotal == const $CopyWithPlaceholder()
          ? _value.taxTotal
          // ignore: cast_nullable_to_non_nullable
          : taxTotal as double?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as double?,
      paymentMethod: paymentMethod == const $CopyWithPlaceholder()
          ? _value.paymentMethod
          // ignore: cast_nullable_to_non_nullable
          : paymentMethod as String?,
      paymentStatus: paymentStatus == const $CopyWithPlaceholder()
          ? _value.paymentStatus
          // ignore: cast_nullable_to_non_nullable
          : paymentStatus as String?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
      meta: meta == const $CopyWithPlaceholder()
          ? _value.meta
          // ignore: cast_nullable_to_non_nullable
          : meta as Map<String, dynamic>?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserModel?,
      cart: cart == const $CopyWithPlaceholder()
          ? _value.cart
          // ignore: cast_nullable_to_non_nullable
          : cart as CartModel?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<OrderItemModel>?,
      payments: payments == const $CopyWithPlaceholder()
          ? _value.payments
          // ignore: cast_nullable_to_non_nullable
          : payments as List<PaymentModel>?,
    );
  }
}

extension $OrderModelCopyWith on OrderModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderModel.copyWith(...)` or `instanceOfOrderModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderModelCWProxy get copyWith => _$OrderModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
  id: (json['id'] as num?)?.toInt(),
  orderNumber: json['order_number'] as String?,
  userId: (json['user_id'] as num?)?.toInt(),
  cartId: (json['cart_id'] as num?)?.toInt(),
  status: json['status'] as String?,
  currency: json['currency'] as String?,
  subtotal: (json['subtotal'] as num?)?.toDouble(),
  discountTotal: (json['discount_total'] as num?)?.toDouble(),
  taxTotal: (json['tax_total'] as num?)?.toDouble(),
  total: (json['total'] as num?)?.toDouble(),
  paymentMethod: json['payment_method'] as String?,
  paymentStatus: json['payment_status'] as String?,
  note: json['note'] as String?,
  meta: json['meta'] as Map<String, dynamic>?,
  user: json['user'] == null
      ? null
      : UserModel.fromJson(json['user'] as Map<String, dynamic>),
  cart: json['cart'] == null
      ? null
      : CartModel.fromJson(json['cart'] as Map<String, dynamic>),
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  payments: (json['payments'] as List<dynamic>?)
      ?.map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'user_id': instance.userId,
      'cart_id': instance.cartId,
      'status': instance.status,
      'currency': instance.currency,
      'subtotal': instance.subtotal,
      'discount_total': instance.discountTotal,
      'tax_total': instance.taxTotal,
      'total': instance.total,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStatus,
      'note': instance.note,
      'meta': instance.meta,
      'user': instance.user?.toJson(),
      'cart': instance.cart?.toJson(),
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'payments': instance.payments?.map((e) => e.toJson()).toList(),
    };
