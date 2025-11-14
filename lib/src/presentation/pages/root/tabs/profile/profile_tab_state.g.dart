// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_tab_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileTabStateCWProxy {
  ProfileTabState isLoading(bool isLoading);

  ProfileTabState isRefreshing(bool isRefreshing);

  ProfileTabState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProfileTabState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProfileTabState(...).copyWith(id: 12, name: "My name")
  /// ```
  ProfileTabState call({
    bool isLoading,
    bool isRefreshing,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProfileTabState.copyWith(...)` or call `instanceOfProfileTabState.copyWith.fieldName(value)` for a single field.
class _$ProfileTabStateCWProxyImpl implements _$ProfileTabStateCWProxy {
  const _$ProfileTabStateCWProxyImpl(this._value);

  final ProfileTabState _value;

  @override
  ProfileTabState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  ProfileTabState isRefreshing(bool isRefreshing) =>
      call(isRefreshing: isRefreshing);

  @override
  ProfileTabState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProfileTabState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProfileTabState(...).copyWith(id: 12, name: "My name")
  /// ```
  ProfileTabState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? isRefreshing = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return ProfileTabState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      isRefreshing:
          isRefreshing == const $CopyWithPlaceholder() || isRefreshing == null
          ? _value.isRefreshing
          // ignore: cast_nullable_to_non_nullable
          : isRefreshing as bool,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $ProfileTabStateCopyWith on ProfileTabState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProfileTabState.copyWith(...)` or `instanceOfProfileTabState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileTabStateCWProxy get copyWith => _$ProfileTabStateCWProxyImpl(this);
}
