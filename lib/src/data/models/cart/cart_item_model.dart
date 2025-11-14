// lib/src/data/models/cart_item_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/course/course_model.dart';
import 'package:json_annotation/json_annotation.dart';


part 'cart_item_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class CartItemModel {
  final int? id;

  @JsonKey(name: 'cart_id')
  final int? cartId;

  @JsonKey(name: 'course_id')
  final int? courseId;

  final int? quantity;

  @JsonKey(name: 'unit_price')
  final double? unitPrice;

  @JsonKey(name: 'line_total')
  final double? lineTotal;

  final Map<String, dynamic>? meta;

  final CourseModel? course;

  const CartItemModel({
    this.id,
    this.cartId,
    this.courseId,
    this.quantity,
    this.unitPrice,
    this.lineTotal,
    this.meta,
    this.course,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);
}
