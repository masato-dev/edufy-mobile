// lib/src/data/models/order_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/cart/cart_model.dart';
import 'package:edufy_mobile/src/data/models/payment/payment_model.dart';
import 'package:edufy_mobile/src/data/models/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'order_item_model.dart';

part 'order_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class OrderModel {
  final int? id;

  @JsonKey(name: 'order_number')
  final String? orderNumber;

  @JsonKey(name: 'user_id')
  final int? userId;

  @JsonKey(name: 'cart_id')
  final int? cartId;

  final String? status;
  final String? currency;
  final double? subtotal;

  @JsonKey(name: 'discount_total')
  final double? discountTotal;

  @JsonKey(name: 'tax_total')
  final double? taxTotal;

  final double? total;

  @JsonKey(name: 'payment_method')
  final String? paymentMethod;

  @JsonKey(name: 'payment_status')
  final String? paymentStatus;

  final String? note;
  final Map<String, dynamic>? meta;

  final UserModel? user;
  final CartModel? cart;
  final List<OrderItemModel>? items;
  final List<PaymentModel>? payments;

  const OrderModel({
    this.id,
    this.orderNumber,
    this.userId,
    this.cartId,
    this.status,
    this.currency,
    this.subtotal,
    this.discountTotal,
    this.taxTotal,
    this.total,
    this.paymentMethod,
    this.paymentStatus,
    this.note,
    this.meta,
    this.user,
    this.cart,
    this.items,
    this.payments,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
