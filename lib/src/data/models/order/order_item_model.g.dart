// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderItemModelCWProxy {
  OrderItemModel id(int? id);

  OrderItemModel orderId(int? orderId);

  OrderItemModel courseId(int? courseId);

  OrderItemModel quantity(int? quantity);

  OrderItemModel unitPrice(double? unitPrice);

  OrderItemModel lineTotal(double? lineTotal);

  OrderItemModel meta(Map<String, dynamic>? meta);

  OrderItemModel course(CourseModel? course);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderItemModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderItemModel(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderItemModel call({
    int? id,
    int? orderId,
    int? courseId,
    int? quantity,
    double? unitPrice,
    double? lineTotal,
    Map<String, dynamic>? meta,
    CourseModel? course,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderItemModel.copyWith(...)` or call `instanceOfOrderItemModel.copyWith.fieldName(value)` for a single field.
class _$OrderItemModelCWProxyImpl implements _$OrderItemModelCWProxy {
  const _$OrderItemModelCWProxyImpl(this._value);

  final OrderItemModel _value;

  @override
  OrderItemModel id(int? id) => call(id: id);

  @override
  OrderItemModel orderId(int? orderId) => call(orderId: orderId);

  @override
  OrderItemModel courseId(int? courseId) => call(courseId: courseId);

  @override
  OrderItemModel quantity(int? quantity) => call(quantity: quantity);

  @override
  OrderItemModel unitPrice(double? unitPrice) => call(unitPrice: unitPrice);

  @override
  OrderItemModel lineTotal(double? lineTotal) => call(lineTotal: lineTotal);

  @override
  OrderItemModel meta(Map<String, dynamic>? meta) => call(meta: meta);

  @override
  OrderItemModel course(CourseModel? course) => call(course: course);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderItemModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderItemModel(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderItemModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? courseId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? lineTotal = const $CopyWithPlaceholder(),
    Object? meta = const $CopyWithPlaceholder(),
    Object? course = const $CopyWithPlaceholder(),
  }) {
    return OrderItemModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as int?,
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

extension $OrderItemModelCopyWith on OrderItemModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderItemModel.copyWith(...)` or `instanceOfOrderItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderItemModelCWProxy get copyWith => _$OrderItemModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      unitPrice: (json['unit_price'] as num?)?.toDouble(),
      lineTotal: (json['line_total'] as num?)?.toDouble(),
      meta: json['meta'] as Map<String, dynamic>?,
      course: json['course'] == null
          ? null
          : CourseModel.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'course_id': instance.courseId,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'line_total': instance.lineTotal,
      'meta': instance.meta,
      'course': instance.course?.toJson(),
    };
