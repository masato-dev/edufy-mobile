// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_listing_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CourseListingStateCWProxy {
  CourseListingState isLoading(bool isLoading);

  CourseListingState items(List<CourseModel> items);

  CourseListingState page(int page);

  CourseListingState pageCount(int pageCount);

  CourseListingState keyword(String keyword);

  CourseListingState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CourseListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CourseListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  CourseListingState call({
    bool isLoading,
    List<CourseModel> items,
    int page,
    int pageCount,
    String keyword,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCourseListingState.copyWith(...)` or call `instanceOfCourseListingState.copyWith.fieldName(value)` for a single field.
class _$CourseListingStateCWProxyImpl implements _$CourseListingStateCWProxy {
  const _$CourseListingStateCWProxyImpl(this._value);

  final CourseListingState _value;

  @override
  CourseListingState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  CourseListingState items(List<CourseModel> items) => call(items: items);

  @override
  CourseListingState page(int page) => call(page: page);

  @override
  CourseListingState pageCount(int pageCount) => call(pageCount: pageCount);

  @override
  CourseListingState keyword(String keyword) => call(keyword: keyword);

  @override
  CourseListingState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CourseListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CourseListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  CourseListingState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageCount = const $CopyWithPlaceholder(),
    Object? keyword = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return CourseListingState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<CourseModel>,
      page: page == const $CopyWithPlaceholder() || page == null
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int,
      pageCount: pageCount == const $CopyWithPlaceholder() || pageCount == null
          ? _value.pageCount
          // ignore: cast_nullable_to_non_nullable
          : pageCount as int,
      keyword: keyword == const $CopyWithPlaceholder() || keyword == null
          ? _value.keyword
          // ignore: cast_nullable_to_non_nullable
          : keyword as String,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $CourseListingStateCopyWith on CourseListingState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCourseListingState.copyWith(...)` or `instanceOfCourseListingState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CourseListingStateCWProxy get copyWith =>
      _$CourseListingStateCWProxyImpl(this);
}
