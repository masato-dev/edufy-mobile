// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelCWProxy {
  UserModel id(int? id);

  UserModel name(String? name);

  UserModel fullName(String? fullName);

  UserModel email(String? email);

  UserModel avatarPath(String? avatarPath);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ```
  UserModel call({
    int? id,
    String? name,
    String? fullName,
    String? email,
    String? avatarPath,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserModel.copyWith(...)` or call `instanceOfUserModel.copyWith.fieldName(value)` for a single field.
class _$UserModelCWProxyImpl implements _$UserModelCWProxy {
  const _$UserModelCWProxyImpl(this._value);

  final UserModel _value;

  @override
  UserModel id(int? id) => call(id: id);

  @override
  UserModel name(String? name) => call(name: name);

  @override
  UserModel fullName(String? fullName) => call(fullName: fullName);

  @override
  UserModel email(String? email) => call(email: email);

  @override
  UserModel avatarPath(String? avatarPath) => call(avatarPath: avatarPath);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ```
  UserModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? avatarPath = const $CopyWithPlaceholder(),
  }) {
    return UserModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      fullName: fullName == const $CopyWithPlaceholder()
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      avatarPath: avatarPath == const $CopyWithPlaceholder()
          ? _value.avatarPath
          // ignore: cast_nullable_to_non_nullable
          : avatarPath as String?,
    );
  }
}

extension $UserModelCopyWith on UserModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserModel.copyWith(...)` or `instanceOfUserModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserModelCWProxy get copyWith => _$UserModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  fullName: json['full_name'] as String?,
  email: json['email'] as String?,
  avatarPath: json['avatar_path'] as String?,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'full_name': instance.fullName,
  'email': instance.email,
  'avatar_path': instance.avatarPath,
};
