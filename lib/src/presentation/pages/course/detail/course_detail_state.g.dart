// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CourseDetailStateCWProxy {
  CourseDetailState isLoading(bool isLoading);

  CourseDetailState course(CourseModel? course);

  CourseDetailState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CourseDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CourseDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  CourseDetailState call({
    bool isLoading,
    CourseModel? course,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCourseDetailState.copyWith(...)` or call `instanceOfCourseDetailState.copyWith.fieldName(value)` for a single field.
class _$CourseDetailStateCWProxyImpl implements _$CourseDetailStateCWProxy {
  const _$CourseDetailStateCWProxyImpl(this._value);

  final CourseDetailState _value;

  @override
  CourseDetailState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  CourseDetailState course(CourseModel? course) => call(course: course);

  @override
  CourseDetailState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CourseDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CourseDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  CourseDetailState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? course = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return CourseDetailState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      course: course == const $CopyWithPlaceholder()
          ? _value.course
          // ignore: cast_nullable_to_non_nullable
          : course as CourseModel?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $CourseDetailStateCopyWith on CourseDetailState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCourseDetailState.copyWith(...)` or `instanceOfCourseDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CourseDetailStateCWProxy get copyWith =>
      _$CourseDetailStateCWProxyImpl(this);
}
