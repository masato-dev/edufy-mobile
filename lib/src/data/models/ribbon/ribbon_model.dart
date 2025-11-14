// lib/src/data/models/ribbon_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ribbon_item_model.dart';

part 'ribbon_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class RibbonModel {
  final int? id;
  final String? title;
  final String? slug;
  final String? description;
  final String? status;

  @JsonKey(name: 'order')
  final int? order;

  final List<RibbonItemModel>? items;

  const RibbonModel({
    this.id,
    this.title,
    this.slug,
    this.description,
    this.status,
    this.order,
    this.items,
  });

  factory RibbonModel.fromJson(Map<String, dynamic> json) =>
      _$RibbonModelFromJson(json);

  Map<String, dynamic> toJson() => _$RibbonModelToJson(this);
}
