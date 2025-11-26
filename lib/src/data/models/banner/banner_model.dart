import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@CopyWith()
@JsonSerializable()
class BannerModel {
  final int? id;
  final String? title;
  final String? subtitle;

  @JsonKey(name: 'image_path')
  final String? imagePath;

  @JsonKey(name: 'link_url')
  final String? linkUrl;

  final String? position;

  @JsonKey(name: 'sort_order')
  final int? sortOrder;

  final String? status;
  final Map<String, dynamic>? meta;

  const BannerModel({
    this.id,
    this.title,
    this.subtitle,
    this.imagePath,
    this.linkUrl,
    this.position,
    this.sortOrder,
    this.status,
    this.meta,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
