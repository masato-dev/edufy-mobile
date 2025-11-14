// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiResultCWProxy<T, V> {
  ApiResult<T, V> response(T? response);

  ApiResult<T, V> exception(V? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ApiResult<T,V>(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ApiResult<T,V>(...).copyWith(id: 12, name: "My name")
  /// ```
  ApiResult<T, V> call({T? response, V? exception});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfApiResult.copyWith(...)` or call `instanceOfApiResult.copyWith.fieldName(value)` for a single field.
class _$ApiResultCWProxyImpl<T, V> implements _$ApiResultCWProxy<T, V> {
  const _$ApiResultCWProxyImpl(this._value);

  final ApiResult<T, V> _value;

  @override
  ApiResult<T, V> response(T? response) => call(response: response);

  @override
  ApiResult<T, V> exception(V? exception) => call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ApiResult<T,V>(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ApiResult<T,V>(...).copyWith(id: 12, name: "My name")
  /// ```
  ApiResult<T, V> call({
    Object? response = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return ApiResult<T, V>(
      response: response == const $CopyWithPlaceholder()
          ? _value.response
          // ignore: cast_nullable_to_non_nullable
          : response as T?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as V?,
    );
  }
}

extension $ApiResultCopyWith<T, V> on ApiResult<T, V> {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfApiResult.copyWith(...)` or `instanceOfApiResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiResultCWProxy<T, V> get copyWith => _$ApiResultCWProxyImpl<T, V>(this);
}
