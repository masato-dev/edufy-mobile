// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BannerModelCWProxy {
  BannerModel id(int? id);

  BannerModel title(String? title);

  BannerModel subtitle(String? subtitle);

  BannerModel imagePath(String? imagePath);

  BannerModel linkUrl(String? linkUrl);

  BannerModel position(String? position);

  BannerModel sortOrder(int? sortOrder);

  BannerModel status(String? status);

  BannerModel meta(Map<String, dynamic>? meta);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BannerModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BannerModel(...).copyWith(id: 12, name: "My name")
  /// ```
  BannerModel call({
    int? id,
    String? title,
    String? subtitle,
    String? imagePath,
    String? linkUrl,
    String? position,
    int? sortOrder,
    String? status,
    Map<String, dynamic>? meta,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBannerModel.copyWith(...)` or call `instanceOfBannerModel.copyWith.fieldName(value)` for a single field.
class _$BannerModelCWProxyImpl implements _$BannerModelCWProxy {
  const _$BannerModelCWProxyImpl(this._value);

  final BannerModel _value;

  @override
  BannerModel id(int? id) => call(id: id);

  @override
  BannerModel title(String? title) => call(title: title);

  @override
  BannerModel subtitle(String? subtitle) => call(subtitle: subtitle);

  @override
  BannerModel imagePath(String? imagePath) => call(imagePath: imagePath);

  @override
  BannerModel linkUrl(String? linkUrl) => call(linkUrl: linkUrl);

  @override
  BannerModel position(String? position) => call(position: position);

  @override
  BannerModel sortOrder(int? sortOrder) => call(sortOrder: sortOrder);

  @override
  BannerModel status(String? status) => call(status: status);

  @override
  BannerModel meta(Map<String, dynamic>? meta) => call(meta: meta);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BannerModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BannerModel(...).copyWith(id: 12, name: "My name")
  /// ```
  BannerModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? subtitle = const $CopyWithPlaceholder(),
    Object? imagePath = const $CopyWithPlaceholder(),
    Object? linkUrl = const $CopyWithPlaceholder(),
    Object? position = const $CopyWithPlaceholder(),
    Object? sortOrder = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? meta = const $CopyWithPlaceholder(),
  }) {
    return BannerModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      subtitle: subtitle == const $CopyWithPlaceholder()
          ? _value.subtitle
          // ignore: cast_nullable_to_non_nullable
          : subtitle as String?,
      imagePath: imagePath == const $CopyWithPlaceholder()
          ? _value.imagePath
          // ignore: cast_nullable_to_non_nullable
          : imagePath as String?,
      linkUrl: linkUrl == const $CopyWithPlaceholder()
          ? _value.linkUrl
          // ignore: cast_nullable_to_non_nullable
          : linkUrl as String?,
      position: position == const $CopyWithPlaceholder()
          ? _value.position
          // ignore: cast_nullable_to_non_nullable
          : position as String?,
      sortOrder: sortOrder == const $CopyWithPlaceholder()
          ? _value.sortOrder
          // ignore: cast_nullable_to_non_nullable
          : sortOrder as int?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
      meta: meta == const $CopyWithPlaceholder()
          ? _value.meta
          // ignore: cast_nullable_to_non_nullable
          : meta as Map<String, dynamic>?,
    );
  }
}

extension $BannerModelCopyWith on BannerModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBannerModel.copyWith(...)` or `instanceOfBannerModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BannerModelCWProxy get copyWith => _$BannerModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  subtitle: json['subtitle'] as String?,
  imagePath: json['image_path'] as String?,
  linkUrl: json['link_url'] as String?,
  position: json['position'] as String?,
  sortOrder: (json['sort_order'] as num?)?.toInt(),
  status: json['status'] as String?,
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image_path': instance.imagePath,
      'link_url': instance.linkUrl,
      'position': instance.position,
      'sort_order': instance.sortOrder,
      'status': instance.status,
      'meta': instance.meta,
    };
