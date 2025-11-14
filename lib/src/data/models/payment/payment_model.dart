// lib/src/data/models/payment_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/order/order_model.dart';
import 'package:edufy_mobile/src/data/models/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'payment_log_model.dart';

part 'payment_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class PaymentModel {
  final int? id;

  @JsonKey(name: 'order_id')
  final int? orderId;

  @JsonKey(name: 'user_id')
  final int? userId;

  final String? provider;

  @JsonKey(name: 'provider_payment_id')
  final String? providerPaymentId;

  @JsonKey(name: 'provider_charge_id')
  final String? providerChargeId;

  @JsonKey(name: 'client_secret')
  final String? clientSecret;

  final double? amount;
  final String? currency;
  final String? status;
  final Map<String, dynamic>? payload;

  @JsonKey(name: 'paid_at')
  final DateTime? paidAt;

  final OrderModel? order;
  final UserModel? user;
  final List<PaymentLogModel>? logs;

  const PaymentModel({
    this.id,
    this.orderId,
    this.userId,
    this.provider,
    this.providerPaymentId,
    this.providerChargeId,
    this.clientSecret,
    this.amount,
    this.currency,
    this.status,
    this.payload,
    this.paidAt,
    this.order,
    this.user,
    this.logs,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentModelToJson(this);
}
