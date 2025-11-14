// lib/src/data/models/ribbon_item_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/course/course_model.dart';
import 'package:json_annotation/json_annotation.dart';


part 'ribbon_item_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class RibbonItemModel {
  final int? id;

  @JsonKey(name: 'ribbon_id')
  final int? ribbonId;

  @JsonKey(name: 'course_id')
  final int? courseId;

  @JsonKey(name: 'order')
  final int? order;

  final CourseModel? course;

  const RibbonItemModel({
    this.id,
    this.ribbonId,
    this.courseId,
    this.order,
    this.course,
  });

  factory RibbonItemModel.fromJson(Map<String, dynamic> json) =>
      _$RibbonItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$RibbonItemModelToJson(this);
}
