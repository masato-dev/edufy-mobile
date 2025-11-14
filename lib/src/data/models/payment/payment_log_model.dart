// lib/src/data/models/payment_log_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_log_model.g.dart';

@CopyWith()
@JsonSerializable()
class PaymentLogModel {
  final int? id;

  @JsonKey(name: 'payment_id')
  final int? paymentId;

  final String? event;
  final String? level;
  final Map<String, dynamic>? payload;

  const PaymentLogModel({
    this.id,
    this.paymentId,
    this.event,
    this.level,
    this.payload,
  });

  factory PaymentLogModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentLogModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentLogModelToJson(this);
}
