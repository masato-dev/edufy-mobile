// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_detail_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TeacherDetailStateCWProxy {
  TeacherDetailState isLoading(bool isLoading);

  TeacherDetailState teacher(TeacherModel? teacher);

  TeacherDetailState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TeacherDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TeacherDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  TeacherDetailState call({
    bool isLoading,
    TeacherModel? teacher,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTeacherDetailState.copyWith(...)` or call `instanceOfTeacherDetailState.copyWith.fieldName(value)` for a single field.
class _$TeacherDetailStateCWProxyImpl implements _$TeacherDetailStateCWProxy {
  const _$TeacherDetailStateCWProxyImpl(this._value);

  final TeacherDetailState _value;

  @override
  TeacherDetailState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  TeacherDetailState teacher(TeacherModel? teacher) => call(teacher: teacher);

  @override
  TeacherDetailState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TeacherDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TeacherDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  TeacherDetailState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? teacher = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return TeacherDetailState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      teacher: teacher == const $CopyWithPlaceholder()
          ? _value.teacher
          // ignore: cast_nullable_to_non_nullable
          : teacher as TeacherModel?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $TeacherDetailStateCopyWith on TeacherDetailState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTeacherDetailState.copyWith(...)` or `instanceOfTeacherDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TeacherDetailStateCWProxy get copyWith =>
      _$TeacherDetailStateCWProxyImpl(this);
}
