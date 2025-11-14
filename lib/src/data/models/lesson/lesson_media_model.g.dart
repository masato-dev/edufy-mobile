// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_media_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LessonMediaModelCWProxy {
  LessonMediaModel id(int? id);

  LessonMediaModel lessonId(int? lessonId);

  LessonMediaModel courseMediaId(int? courseMediaId);

  LessonMediaModel title(String? title);

  LessonMediaModel sortOrder(int? sortOrder);

  LessonMediaModel lesson(LessonModel? lesson);

  LessonMediaModel courseMedia(CourseMediaModel? courseMedia);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LessonMediaModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LessonMediaModel(...).copyWith(id: 12, name: "My name")
  /// ```
  LessonMediaModel call({
    int? id,
    int? lessonId,
    int? courseMediaId,
    String? title,
    int? sortOrder,
    LessonModel? lesson,
    CourseMediaModel? courseMedia,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLessonMediaModel.copyWith(...)` or call `instanceOfLessonMediaModel.copyWith.fieldName(value)` for a single field.
class _$LessonMediaModelCWProxyImpl implements _$LessonMediaModelCWProxy {
  const _$LessonMediaModelCWProxyImpl(this._value);

  final LessonMediaModel _value;

  @override
  LessonMediaModel id(int? id) => call(id: id);

  @override
  LessonMediaModel lessonId(int? lessonId) => call(lessonId: lessonId);

  @override
  LessonMediaModel courseMediaId(int? courseMediaId) =>
      call(courseMediaId: courseMediaId);

  @override
  LessonMediaModel title(String? title) => call(title: title);

  @override
  LessonMediaModel sortOrder(int? sortOrder) => call(sortOrder: sortOrder);

  @override
  LessonMediaModel lesson(LessonModel? lesson) => call(lesson: lesson);

  @override
  LessonMediaModel courseMedia(CourseMediaModel? courseMedia) =>
      call(courseMedia: courseMedia);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LessonMediaModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LessonMediaModel(...).copyWith(id: 12, name: "My name")
  /// ```
  LessonMediaModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? lessonId = const $CopyWithPlaceholder(),
    Object? courseMediaId = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? sortOrder = const $CopyWithPlaceholder(),
    Object? lesson = const $CopyWithPlaceholder(),
    Object? courseMedia = const $CopyWithPlaceholder(),
  }) {
    return LessonMediaModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      lessonId: lessonId == const $CopyWithPlaceholder()
          ? _value.lessonId
          // ignore: cast_nullable_to_non_nullable
          : lessonId as int?,
      courseMediaId: courseMediaId == const $CopyWithPlaceholder()
          ? _value.courseMediaId
          // ignore: cast_nullable_to_non_nullable
          : courseMediaId as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      sortOrder: sortOrder == const $CopyWithPlaceholder()
          ? _value.sortOrder
          // ignore: cast_nullable_to_non_nullable
          : sortOrder as int?,
      lesson: lesson == const $CopyWithPlaceholder()
          ? _value.lesson
          // ignore: cast_nullable_to_non_nullable
          : lesson as LessonModel?,
      courseMedia: courseMedia == const $CopyWithPlaceholder()
          ? _value.courseMedia
          // ignore: cast_nullable_to_non_nullable
          : courseMedia as CourseMediaModel?,
    );
  }
}

extension $LessonMediaModelCopyWith on LessonMediaModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLessonMediaModel.copyWith(...)` or `instanceOfLessonMediaModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LessonMediaModelCWProxy get copyWith => _$LessonMediaModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonMediaModel _$LessonMediaModelFromJson(Map<String, dynamic> json) =>
    LessonMediaModel(
      id: (json['id'] as num?)?.toInt(),
      lessonId: (json['lesson_id'] as num?)?.toInt(),
      courseMediaId: (json['course_media_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt(),
      lesson: json['lesson'] == null
          ? null
          : LessonModel.fromJson(json['lesson'] as Map<String, dynamic>),
      courseMedia: json['courseMedia'] == null
          ? null
          : CourseMediaModel.fromJson(
              json['courseMedia'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$LessonMediaModelToJson(LessonMediaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lesson_id': instance.lessonId,
      'course_media_id': instance.courseMediaId,
      'title': instance.title,
      'sort_order': instance.sortOrder,
      'lesson': instance.lesson?.toJson(),
      'courseMedia': instance.courseMedia?.toJson(),
    };
