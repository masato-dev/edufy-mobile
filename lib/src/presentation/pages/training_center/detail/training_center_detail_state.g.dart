// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_center_detail_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TrainingCenterDetailStateCWProxy {
  TrainingCenterDetailState isLoading(bool isLoading);

  TrainingCenterDetailState center(TrainingCenterModel? center);

  TrainingCenterDetailState exception(ApiException? exception);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrainingCenterDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrainingCenterDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  TrainingCenterDetailState call({
    bool isLoading,
    TrainingCenterModel? center,
    ApiException? exception,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTrainingCenterDetailState.copyWith(...)` or call `instanceOfTrainingCenterDetailState.copyWith.fieldName(value)` for a single field.
class _$TrainingCenterDetailStateCWProxyImpl
    implements _$TrainingCenterDetailStateCWProxy {
  const _$TrainingCenterDetailStateCWProxyImpl(this._value);

  final TrainingCenterDetailState _value;

  @override
  TrainingCenterDetailState isLoading(bool isLoading) =>
      call(isLoading: isLoading);

  @override
  TrainingCenterDetailState center(TrainingCenterModel? center) =>
      call(center: center);

  @override
  TrainingCenterDetailState exception(ApiException? exception) =>
      call(exception: exception);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrainingCenterDetailState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrainingCenterDetailState(...).copyWith(id: 12, name: "My name")
  /// ```
  TrainingCenterDetailState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? center = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
  }) {
    return TrainingCenterDetailState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      center: center == const $CopyWithPlaceholder()
          ? _value.center
          // ignore: cast_nullable_to_non_nullable
          : center as TrainingCenterModel?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as ApiException?,
    );
  }
}

extension $TrainingCenterDetailStateCopyWith on TrainingCenterDetailState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTrainingCenterDetailState.copyWith(...)` or `instanceOfTrainingCenterDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TrainingCenterDetailStateCWProxy get copyWith =>
      _$TrainingCenterDetailStateCWProxyImpl(this);
}
