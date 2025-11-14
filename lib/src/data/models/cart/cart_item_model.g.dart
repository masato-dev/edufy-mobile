// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CartItemModelCWProxy {
  CartItemModel id(int? id);

  CartItemModel cartId(int? cartId);

  CartItemModel courseId(int? courseId);

  CartItemModel quantity(int? quantity);

  CartItemModel unitPrice(double? unitPrice);

  CartItemModel lineTotal(double? lineTotal);

  CartItemModel meta(Map<String, dynamic>? meta);

  CartItemModel course(CourseModel? course);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CartItemModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CartItemModel(...).copyWith(id: 12, name: "My name")
  /// ```
  CartItemModel call({
    int? id,
    int? cartId,
    int? courseId,
    int? quantity,
    double? unitPrice,
    double? lineTotal,
    Map<String, dynamic>? meta,
    CourseModel? course,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCartItemModel.copyWith(...)` or call `instanceOfCartItemModel.copyWith.fieldName(value)` for a single field.
class _$CartItemModelCWProxyImpl implements _$CartItemModelCWProxy {
  const _$CartItemModelCWProxyImpl(this._value);

  final CartItemModel _value;

  @override
  CartItemModel id(int? id) => call(id: id);

  @override
  CartItemModel cartId(int? cartId) => call(cartId: cartId);

  @override
  CartItemModel courseId(int? courseId) => call(courseId: courseId);

  @override
  CartItemModel quantity(int? quantity) => call(quantity: quantity);

  @override
  CartItemModel unitPrice(double? unitPrice) => call(unitPrice: unitPrice);

  @override
  CartItemModel lineTotal(double? lineTotal) => call(lineTotal: lineTotal);

  @override
  CartItemModel meta(Map<String, dynamic>? meta) => call(meta: meta);

  @override
  CartItemModel course(CourseModel? course) => call(course: course);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CartItemModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CartItemModel(...).copyWith(id: 12, name: "My name")
  /// ```
  CartItemModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? cartId = const $CopyWithPlaceholder(),
    Object? courseId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? lineTotal = const $CopyWithPlaceholder(),
    Object? meta = const $CopyWithPlaceholder(),
    Object? course = const $CopyWithPlaceholder(),
  }) {
    return CartItemModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      cartId: cartId == const $CopyWithPlaceholder()
          ? _value.cartId
          // ignore: cast_nullable_to_non_nullable
          : cartId as int?,
      courseId: courseId == const $CopyWithPlaceholder()
          ? _value.courseId
          // ignore: cast_nullable_to_non_nullable
          : courseId as int?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as double?,
      lineTotal: lineTotal == const $CopyWithPlaceholder()
          ? _value.lineTotal
          // ignore: cast_nullable_to_non_nullable
          : lineTotal as double?,
      meta: meta == const $CopyWithPlaceholder()
          ? _value.meta
          // ignore: cast_nullable_to_non_nullable
          : meta as Map<String, dynamic>?,
      course: course == const $CopyWithPlaceholder()
          ? _value.course
          // ignore: cast_nullable_to_non_nullable
          : course as CourseModel?,
    );
  }
}

extension $CartItemModelCopyWith on CartItemModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCartItemModel.copyWith(...)` or `instanceOfCartItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CartItemModelCWProxy get copyWith => _$CartItemModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    CartItemModel(
      id: (json['id'] as num?)?.toInt(),
      cartId: (json['cart_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      unitPrice: (json['unit_price'] as num?)?.toDouble(),
      lineTotal: (json['line_total'] as num?)?.toDouble(),
      meta: json['meta'] as Map<String, dynamic>?,
      course: json['course'] == null
          ? null
          : CourseModel.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartItemModelToJson(CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart_id': instance.cartId,
      'course_id': instance.courseId,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'line_total': instance.lineTotal,
      'meta': instance.meta,
      'course': instance.course?.toJson(),
    };
