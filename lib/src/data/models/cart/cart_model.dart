// lib/src/data/models/cart_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'cart_item_model.dart';

part 'cart_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class CartModel {
  final int? id;

  @JsonKey(name: 'user_id')
  final int? userId;

  final String? status;
  final double? subtotal;

  @JsonKey(name: 'discount_total')
  final double? discountTotal;

  final double? total;
  final Map<String, dynamic>? meta;

  final UserModel? user;
  final List<CartItemModel>? items;

  const CartModel({
    this.id,
    this.userId,
    this.status,
    this.subtotal,
    this.discountTotal,
    this.total,
    this.meta,
    this.user,
    this.items,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
