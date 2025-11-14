// lib/src/data/models/order_item_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/course/course_model.dart';
import 'package:json_annotation/json_annotation.dart';


part 'order_item_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class OrderItemModel {
  final int? id;

  @JsonKey(name: 'order_id')
  final int? orderId;

  @JsonKey(name: 'course_id')
  final int? courseId;

  final int? quantity;

  @JsonKey(name: 'unit_price')
  final double? unitPrice;

  @JsonKey(name: 'line_total')
  final double? lineTotal;

  final Map<String, dynamic>? meta;

  final CourseModel? course;

  const OrderItemModel({
    this.id,
    this.orderId,
    this.courseId,
    this.quantity,
    this.unitPrice,
    this.lineTotal,
    this.meta,
    this.course,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);
}
