// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CommonRequestCWProxy {
  CommonRequest page(int? page);

  CommonRequest perPage(int? perPage);

  CommonRequest name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CommonRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CommonRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CommonRequest call({int? page, int? perPage, String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCommonRequest.copyWith(...)` or call `instanceOfCommonRequest.copyWith.fieldName(value)` for a single field.
class _$CommonRequestCWProxyImpl implements _$CommonRequestCWProxy {
  const _$CommonRequestCWProxyImpl(this._value);

  final CommonRequest _value;

  @override
  CommonRequest page(int? page) => call(page: page);

  @override
  CommonRequest perPage(int? perPage) => call(perPage: perPage);

  @override
  CommonRequest name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CommonRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CommonRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CommonRequest call({
    Object? page = const $CopyWithPlaceholder(),
    Object? perPage = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CommonRequest(
      page: page == const $CopyWithPlaceholder()
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int?,
      perPage: perPage == const $CopyWithPlaceholder()
          ? _value.perPage
          // ignore: cast_nullable_to_non_nullable
          : perPage as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $CommonRequestCopyWith on CommonRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCommonRequest.copyWith(...)` or `instanceOfCommonRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CommonRequestCWProxy get copyWith => _$CommonRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonRequest _$CommonRequestFromJson(Map<String, dynamic> json) =>
    CommonRequest(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 15,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CommonRequestToJson(CommonRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'name': instance.name,
    };
