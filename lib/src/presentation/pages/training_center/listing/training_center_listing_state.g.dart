// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_center_listing_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TrainingCenterListingStateCWProxy {
  TrainingCenterListingState isLoading(bool isLoading);

  TrainingCenterListingState items(List<TrainingCenterModel> items);

  TrainingCenterListingState page(int page);

  TrainingCenterListingState pageCount(int pageCount);

  TrainingCenterListingState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrainingCenterListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrainingCenterListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  TrainingCenterListingState call({
    bool isLoading,
    List<TrainingCenterModel> items,
    int page,
    int pageCount,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTrainingCenterListingState.copyWith(...)` or call `instanceOfTrainingCenterListingState.copyWith.fieldName(value)` for a single field.
class _$TrainingCenterListingStateCWProxyImpl
    implements _$TrainingCenterListingStateCWProxy {
  const _$TrainingCenterListingStateCWProxyImpl(this._value);

  final TrainingCenterListingState _value;

  @override
  TrainingCenterListingState isLoading(bool isLoading) =>
      call(isLoading: isLoading);

  @override
  TrainingCenterListingState items(List<TrainingCenterModel> items) =>
      call(items: items);

  @override
  TrainingCenterListingState page(int page) => call(page: page);

  @override
  TrainingCenterListingState pageCount(int pageCount) =>
      call(pageCount: pageCount);

  @override
  TrainingCenterListingState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrainingCenterListingState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrainingCenterListingState(...).copyWith(id: 12, name: "My name")
  /// ```
  TrainingCenterListingState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageCount = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return TrainingCenterListingState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<TrainingCenterModel>,
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

extension $TrainingCenterListingStateCopyWith on TrainingCenterListingState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTrainingCenterListingState.copyWith(...)` or `instanceOfTrainingCenterListingState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TrainingCenterListingStateCWProxy get copyWith =>
      _$TrainingCenterListingStateCWProxyImpl(this);
}
