// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthStateCWProxy {
  AuthState isLoading(bool isLoading);

  AuthState loggedInUser(UserModel? loggedInUser);

  AuthState isAuthenticated(bool isAuthenticated);

  AuthState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AuthState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ```
  AuthState call({
    bool isLoading,
    UserModel? loggedInUser,
    bool isAuthenticated,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAuthState.copyWith(...)` or call `instanceOfAuthState.copyWith.fieldName(value)` for a single field.
class _$AuthStateCWProxyImpl implements _$AuthStateCWProxy {
  const _$AuthStateCWProxyImpl(this._value);

  final AuthState _value;

  @override
  AuthState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  AuthState loggedInUser(UserModel? loggedInUser) =>
      call(loggedInUser: loggedInUser);

  @override
  AuthState isAuthenticated(bool isAuthenticated) =>
      call(isAuthenticated: isAuthenticated);

  @override
  AuthState exception(ApiException? exception) => call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AuthState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ```
  AuthState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? loggedInUser = const $CopyWithPlaceholder(),
    Object? isAuthenticated = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return AuthState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      loggedInUser: loggedInUser == const $CopyWithPlaceholder()
          ? _value.loggedInUser
          // ignore: cast_nullable_to_non_nullable
          : loggedInUser as UserModel?,
      isAuthenticated:
          isAuthenticated == const $CopyWithPlaceholder() ||
              isAuthenticated == null
          ? _value.isAuthenticated
          // ignore: cast_nullable_to_non_nullable
          : isAuthenticated as bool,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $AuthStateCopyWith on AuthState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAuthState.copyWith(...)` or `instanceOfAuthState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthStateCWProxy get copyWith => _$AuthStateCWProxyImpl(this);
}
