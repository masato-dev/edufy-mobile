// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_listing_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TeacherListingStateCWProxy {
  TeacherListingState isLoading(bool isLoading);

  TeacherListingState items(List<TeacherModel> items);

  TeacherListingState page(int page);

  TeacherListingState pageCount(int pageCount);

  TeacherListingState keyword(String keyword);

  TeacherListingState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TeacherListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TeacherListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  TeacherListingState call({
    bool isLoading,
    List<TeacherModel> items,
    int page,
    int pageCount,
    String keyword,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTeacherListingState.copyWith(...)` or call `instanceOfTeacherListingState.copyWith.fieldName(value)` for a single field.
class _$TeacherListingStateCWProxyImpl implements _$TeacherListingStateCWProxy {
  const _$TeacherListingStateCWProxyImpl(this._value);

  final TeacherListingState _value;

  @override
  TeacherListingState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  TeacherListingState items(List<TeacherModel> items) => call(items: items);

  @override
  TeacherListingState page(int page) => call(page: page);

  @override
  TeacherListingState pageCount(int pageCount) => call(pageCount: pageCount);

  @override
  TeacherListingState keyword(String keyword) => call(keyword: keyword);

  @override
  TeacherListingState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TeacherListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TeacherListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  TeacherListingState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageCount = const $CopyWithPlaceholder(),
    Object? keyword = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return TeacherListingState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<TeacherModel>,
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

extension $TeacherListingStateCopyWith on TeacherListingState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTeacherListingState.copyWith(...)` or `instanceOfTeacherListingState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TeacherListingStateCWProxy get copyWith =>
      _$TeacherListingStateCWProxyImpl(this);
}
