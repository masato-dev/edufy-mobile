// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TeacherModelCWProxy {
  TeacherModel id(int? id);

  TeacherModel trainingCenterId(int? trainingCenterId);

  TeacherModel fullName(String? fullName);

  TeacherModel slug(String? slug);

  TeacherModel email(String? email);

  TeacherModel phone(String? phone);

  TeacherModel title(String? title);

  TeacherModel bio(String? bio);

  TeacherModel avatarPath(String? avatarPath);

  TeacherModel isActive(bool? isActive);

  TeacherModel skills(List<String>? skills);

  TeacherModel trainingCenter(TrainingCenterModel? trainingCenter);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TeacherModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TeacherModel(...).copyWith(id: 12, name: "My name")
  /// ```
  TeacherModel call({
    int? id,
    int? trainingCenterId,
    String? fullName,
    String? slug,
    String? email,
    String? phone,
    String? title,
    String? bio,
    String? avatarPath,
    bool? isActive,
    List<String>? skills,
    TrainingCenterModel? trainingCenter,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTeacherModel.copyWith(...)` or call `instanceOfTeacherModel.copyWith.fieldName(value)` for a single field.
class _$TeacherModelCWProxyImpl implements _$TeacherModelCWProxy {
  const _$TeacherModelCWProxyImpl(this._value);

  final TeacherModel _value;

  @override
  TeacherModel id(int? id) => call(id: id);

  @override
  TeacherModel trainingCenterId(int? trainingCenterId) =>
      call(trainingCenterId: trainingCenterId);

  @override
  TeacherModel fullName(String? fullName) => call(fullName: fullName);

  @override
  TeacherModel slug(String? slug) => call(slug: slug);

  @override
  TeacherModel email(String? email) => call(email: email);

  @override
  TeacherModel phone(String? phone) => call(phone: phone);

  @override
  TeacherModel title(String? title) => call(title: title);

  @override
  TeacherModel bio(String? bio) => call(bio: bio);

  @override
  TeacherModel avatarPath(String? avatarPath) => call(avatarPath: avatarPath);

  @override
  TeacherModel isActive(bool? isActive) => call(isActive: isActive);

  @override
  TeacherModel skills(List<String>? skills) => call(skills: skills);

  @override
  TeacherModel trainingCenter(TrainingCenterModel? trainingCenter) =>
      call(trainingCenter: trainingCenter);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TeacherModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TeacherModel(...).copyWith(id: 12, name: "My name")
  /// ```
  TeacherModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? trainingCenterId = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? slug = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? bio = const $CopyWithPlaceholder(),
    Object? avatarPath = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? skills = const $CopyWithPlaceholder(),
    Object? trainingCenter = const $CopyWithPlaceholder(),
  }) {
    return TeacherModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      trainingCenterId: trainingCenterId == const $CopyWithPlaceholder()
          ? _value.trainingCenterId
          // ignore: cast_nullable_to_non_nullable
          : trainingCenterId as int?,
      fullName: fullName == const $CopyWithPlaceholder()
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String?,
      slug: slug == const $CopyWithPlaceholder()
          ? _value.slug
          // ignore: cast_nullable_to_non_nullable
          : slug as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      bio: bio == const $CopyWithPlaceholder()
          ? _value.bio
          // ignore: cast_nullable_to_non_nullable
          : bio as String?,
      avatarPath: avatarPath == const $CopyWithPlaceholder()
          ? _value.avatarPath
          // ignore: cast_nullable_to_non_nullable
          : avatarPath as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      skills: skills == const $CopyWithPlaceholder()
          ? _value.skills
          // ignore: cast_nullable_to_non_nullable
          : skills as List<String>?,
      trainingCenter: trainingCenter == const $CopyWithPlaceholder()
          ? _value.trainingCenter
          // ignore: cast_nullable_to_non_nullable
          : trainingCenter as TrainingCenterModel?,
    );
  }
}

extension $TeacherModelCopyWith on TeacherModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTeacherModel.copyWith(...)` or `instanceOfTeacherModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TeacherModelCWProxy get copyWith => _$TeacherModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) => TeacherModel(
  id: (json['id'] as num?)?.toInt(),
  trainingCenterId: (json['training_center_id'] as num?)?.toInt(),
  fullName: json['full_name'] as String?,
  slug: json['slug'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  title: json['title'] as String?,
  bio: json['bio'] as String?,
  avatarPath: json['avatar_path'] as String?,
  isActive: json['is_active'] as bool?,
  skills: (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
  trainingCenter: json['trainingCenter'] == null
      ? null
      : TrainingCenterModel.fromJson(
          json['trainingCenter'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TeacherModelToJson(TeacherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'training_center_id': instance.trainingCenterId,
      'full_name': instance.fullName,
      'slug': instance.slug,
      'email': instance.email,
      'phone': instance.phone,
      'title': instance.title,
      'bio': instance.bio,
      'avatar_path': instance.avatarPath,
      'is_active': instance.isActive,
      'skills': instance.skills,
      'trainingCenter': instance.trainingCenter?.toJson(),
    };
