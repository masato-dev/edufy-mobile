// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeStateCWProxy {
  HomeState isLoading(bool isLoading);

  HomeState ribbons(List<RibbonModel> ribbons);

  HomeState banners(List<BannerModel> banners);

  HomeState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `HomeState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ```
  HomeState call({
    bool isLoading,
    List<RibbonModel> ribbons,
    List<BannerModel> banners,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfHomeState.copyWith(...)` or call `instanceOfHomeState.copyWith.fieldName(value)` for a single field.
class _$HomeStateCWProxyImpl implements _$HomeStateCWProxy {
  const _$HomeStateCWProxyImpl(this._value);

  final HomeState _value;

  @override
  HomeState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  HomeState ribbons(List<RibbonModel> ribbons) => call(ribbons: ribbons);

  @override
  HomeState banners(List<BannerModel> banners) => call(banners: banners);

  @override
  HomeState exception(ApiException? exception) => call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `HomeState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ```
  HomeState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? ribbons = const $CopyWithPlaceholder(),
    Object? banners = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return HomeState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      ribbons: ribbons == const $CopyWithPlaceholder() || ribbons == null
          ? _value.ribbons
          // ignore: cast_nullable_to_non_nullable
          : ribbons as List<RibbonModel>,
      banners: banners == const $CopyWithPlaceholder() || banners == null
          ? _value.banners
          // ignore: cast_nullable_to_non_nullable
          : banners as List<BannerModel>,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $HomeStateCopyWith on HomeState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfHomeState.copyWith(...)` or `instanceOfHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeStateCWProxy get copyWith => _$HomeStateCWProxyImpl(this);
}
