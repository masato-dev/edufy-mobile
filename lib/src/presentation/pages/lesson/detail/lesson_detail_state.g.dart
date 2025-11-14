// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_detail_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LessonDetailStateCWProxy {
  LessonDetailState isLoading(bool isLoading);

  LessonDetailState lesson(LessonModel? lesson);

  LessonDetailState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LessonDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LessonDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  LessonDetailState call({
    bool isLoading,
    LessonModel? lesson,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLessonDetailState.copyWith(...)` or call `instanceOfLessonDetailState.copyWith.fieldName(value)` for a single field.
class _$LessonDetailStateCWProxyImpl implements _$LessonDetailStateCWProxy {
  const _$LessonDetailStateCWProxyImpl(this._value);

  final LessonDetailState _value;

  @override
  LessonDetailState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  LessonDetailState lesson(LessonModel? lesson) => call(lesson: lesson);

  @override
  LessonDetailState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LessonDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LessonDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  LessonDetailState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? lesson = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return LessonDetailState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      lesson: lesson == const $CopyWithPlaceholder()
          ? _value.lesson
          // ignore: cast_nullable_to_non_nullable
          : lesson as LessonModel?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $LessonDetailStateCopyWith on LessonDetailState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLessonDetailState.copyWith(...)` or `instanceOfLessonDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LessonDetailStateCWProxy get copyWith =>
      _$LessonDetailStateCWProxyImpl(this);
}
