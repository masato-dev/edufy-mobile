// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_listing_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LessonListingStateCWProxy {
  LessonListingState isLoading(bool isLoading);

  LessonListingState items(List<LessonModel> items);

  LessonListingState page(int page);

  LessonListingState pageCount(int pageCount);

  LessonListingState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LessonListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LessonListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  LessonListingState call({
    bool isLoading,
    List<LessonModel> items,
    int page,
    int pageCount,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLessonListingState.copyWith(...)` or call `instanceOfLessonListingState.copyWith.fieldName(value)` for a single field.
class _$LessonListingStateCWProxyImpl implements _$LessonListingStateCWProxy {
  const _$LessonListingStateCWProxyImpl(this._value);

  final LessonListingState _value;

  @override
  LessonListingState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  LessonListingState items(List<LessonModel> items) => call(items: items);

  @override
  LessonListingState page(int page) => call(page: page);

  @override
  LessonListingState pageCount(int pageCount) => call(pageCount: pageCount);

  @override
  LessonListingState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LessonListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LessonListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  LessonListingState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageCount = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return LessonListingState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<LessonModel>,
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

extension $LessonListingStateCopyWith on LessonListingState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLessonListingState.copyWith(...)` or `instanceOfLessonListingState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LessonListingStateCWProxy get copyWith =>
      _$LessonListingStateCWProxyImpl(this);
}
