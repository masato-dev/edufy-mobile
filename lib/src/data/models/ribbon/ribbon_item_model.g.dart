// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ribbon_item_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RibbonItemModelCWProxy {
  RibbonItemModel id(int? id);

  RibbonItemModel ribbonId(int? ribbonId);

  RibbonItemModel courseId(int? courseId);

  RibbonItemModel order(int? order);

  RibbonItemModel course(CourseModel? course);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RibbonItemModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RibbonItemModel(...).copyWith(id: 12, name: "My name")
  /// ```
  RibbonItemModel call({
    int? id,
    int? ribbonId,
    int? courseId,
    int? order,
    CourseModel? course,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRibbonItemModel.copyWith(...)` or call `instanceOfRibbonItemModel.copyWith.fieldName(value)` for a single field.
class _$RibbonItemModelCWProxyImpl implements _$RibbonItemModelCWProxy {
  const _$RibbonItemModelCWProxyImpl(this._value);

  final RibbonItemModel _value;

  @override
  RibbonItemModel id(int? id) => call(id: id);

  @override
  RibbonItemModel ribbonId(int? ribbonId) => call(ribbonId: ribbonId);

  @override
  RibbonItemModel courseId(int? courseId) => call(courseId: courseId);

  @override
  RibbonItemModel order(int? order) => call(order: order);

  @override
  RibbonItemModel course(CourseModel? course) => call(course: course);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RibbonItemModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RibbonItemModel(...).copyWith(id: 12, name: "My name")
  /// ```
  RibbonItemModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? ribbonId = const $CopyWithPlaceholder(),
    Object? courseId = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? course = const $CopyWithPlaceholder(),
  }) {
    return RibbonItemModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      ribbonId: ribbonId == const $CopyWithPlaceholder()
          ? _value.ribbonId
          // ignore: cast_nullable_to_non_nullable
          : ribbonId as int?,
      courseId: courseId == const $CopyWithPlaceholder()
          ? _value.courseId
          // ignore: cast_nullable_to_non_nullable
          : courseId as int?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as int?,
      course: course == const $CopyWithPlaceholder()
          ? _value.course
          // ignore: cast_nullable_to_non_nullable
          : course as CourseModel?,
    );
  }
}

extension $RibbonItemModelCopyWith on RibbonItemModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRibbonItemModel.copyWith(...)` or `instanceOfRibbonItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RibbonItemModelCWProxy get copyWith => _$RibbonItemModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RibbonItemModel _$RibbonItemModelFromJson(Map<String, dynamic> json) =>
    RibbonItemModel(
      id: (json['id'] as num?)?.toInt(),
      ribbonId: (json['ribbon_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      course: json['course'] == null
          ? null
          : CourseModel.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RibbonItemModelToJson(RibbonItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ribbon_id': instance.ribbonId,
      'course_id': instance.courseId,
      'order': instance.order,
      'course': instance.course?.toJson(),
    };
