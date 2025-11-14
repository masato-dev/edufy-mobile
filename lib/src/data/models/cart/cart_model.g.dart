// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CartModelCWProxy {
  CartModel id(int? id);

  CartModel userId(int? userId);

  CartModel status(String? status);

  CartModel subtotal(double? subtotal);

  CartModel discountTotal(double? discountTotal);

  CartModel total(double? total);

  CartModel meta(Map<String, dynamic>? meta);

  CartModel user(UserModel? user);

  CartModel items(List<CartItemModel>? items);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CartModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CartModel(...).copyWith(id: 12, name: "My name")
  /// ```
  CartModel call({
    int? id,
    int? userId,
    String? status,
    double? subtotal,
    double? discountTotal,
    double? total,
    Map<String, dynamic>? meta,
    UserModel? user,
    List<CartItemModel>? items,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCartModel.copyWith(...)` or call `instanceOfCartModel.copyWith.fieldName(value)` for a single field.
class _$CartModelCWProxyImpl implements _$CartModelCWProxy {
  const _$CartModelCWProxyImpl(this._value);

  final CartModel _value;

  @override
  CartModel id(int? id) => call(id: id);

  @override
  CartModel userId(int? userId) => call(userId: userId);

  @override
  CartModel status(String? status) => call(status: status);

  @override
  CartModel subtotal(double? subtotal) => call(subtotal: subtotal);

  @override
  CartModel discountTotal(double? discountTotal) =>
      call(discountTotal: discountTotal);

  @override
  CartModel total(double? total) => call(total: total);

  @override
  CartModel meta(Map<String, dynamic>? meta) => call(meta: meta);

  @override
  CartModel user(UserModel? user) => call(user: user);

  @override
  CartModel items(List<CartItemModel>? items) => call(items: items);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CartModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CartModel(...).copyWith(id: 12, name: "My name")
  /// ```
  CartModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? subtotal = const $CopyWithPlaceholder(),
    Object? discountTotal = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? meta = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return CartModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
      subtotal: subtotal == const $CopyWithPlaceholder()
          ? _value.subtotal
          // ignore: cast_nullable_to_non_nullable
          : subtotal as double?,
      discountTotal: discountTotal == const $CopyWithPlaceholder()
          ? _value.discountTotal
          // ignore: cast_nullable_to_non_nullable
          : discountTotal as double?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as double?,
      meta: meta == const $CopyWithPlaceholder()
          ? _value.meta
          // ignore: cast_nullable_to_non_nullable
          : meta as Map<String, dynamic>?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserModel?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<CartItemModel>?,
    );
  }
}

extension $CartModelCopyWith on CartModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCartModel.copyWith(...)` or `instanceOfCartModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CartModelCWProxy get copyWith => _$CartModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  status: json['status'] as String?,
  subtotal: (json['subtotal'] as num?)?.toDouble(),
  discountTotal: (json['discount_total'] as num?)?.toDouble(),
  total: (json['total'] as num?)?.toDouble(),
  meta: json['meta'] as Map<String, dynamic>?,
  user: json['user'] == null
      ? null
      : UserModel.fromJson(json['user'] as Map<String, dynamic>),
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'status': instance.status,
  'subtotal': instance.subtotal,
  'discount_total': instance.discountTotal,
  'total': instance.total,
  'meta': instance.meta,
  'user': instance.user?.toJson(),
  'items': instance.items?.map((e) => e.toJson()).toList(),
};
