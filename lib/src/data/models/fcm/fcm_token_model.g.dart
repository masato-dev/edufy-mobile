// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FcmTokenModelCWProxy {
  FcmTokenModel id(int? id);

  FcmTokenModel userId(int? userId);

  FcmTokenModel token(String? token);

  FcmTokenModel deviceId(String? deviceId);

  FcmTokenModel deviceType(String? deviceType);

  FcmTokenModel status(String? status);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FcmTokenModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FcmTokenModel(...).copyWith(id: 12, name: "My name")
  /// ```
  FcmTokenModel call({
    int? id,
    int? userId,
    String? token,
    String? deviceId,
    String? deviceType,
    String? status,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFcmTokenModel.copyWith(...)` or call `instanceOfFcmTokenModel.copyWith.fieldName(value)` for a single field.
class _$FcmTokenModelCWProxyImpl implements _$FcmTokenModelCWProxy {
  const _$FcmTokenModelCWProxyImpl(this._value);

  final FcmTokenModel _value;

  @override
  FcmTokenModel id(int? id) => call(id: id);

  @override
  FcmTokenModel userId(int? userId) => call(userId: userId);

  @override
  FcmTokenModel token(String? token) => call(token: token);

  @override
  FcmTokenModel deviceId(String? deviceId) => call(deviceId: deviceId);

  @override
  FcmTokenModel deviceType(String? deviceType) => call(deviceType: deviceType);

  @override
  FcmTokenModel status(String? status) => call(status: status);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FcmTokenModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FcmTokenModel(...).copyWith(id: 12, name: "My name")
  /// ```
  FcmTokenModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
    Object? deviceId = const $CopyWithPlaceholder(),
    Object? deviceType = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return FcmTokenModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int?,
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String?,
      deviceId: deviceId == const $CopyWithPlaceholder()
          ? _value.deviceId
          // ignore: cast_nullable_to_non_nullable
          : deviceId as String?,
      deviceType: deviceType == const $CopyWithPlaceholder()
          ? _value.deviceType
          // ignore: cast_nullable_to_non_nullable
          : deviceType as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
    );
  }
}

extension $FcmTokenModelCopyWith on FcmTokenModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFcmTokenModel.copyWith(...)` or `instanceOfFcmTokenModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FcmTokenModelCWProxy get copyWith => _$FcmTokenModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FcmTokenModel _$FcmTokenModelFromJson(Map<String, dynamic> json) =>
    FcmTokenModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      token: json['token'] as String?,
      deviceId: json['device_id'] as String?,
      deviceType: json['device_type'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$FcmTokenModelToJson(FcmTokenModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'token': instance.token,
      'device_id': instance.deviceId,
      'device_type': instance.deviceType,
      'status': instance.status,
    };
