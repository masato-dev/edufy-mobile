// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentModelCWProxy {
  PaymentModel id(int? id);

  PaymentModel orderId(int? orderId);

  PaymentModel userId(int? userId);

  PaymentModel provider(String? provider);

  PaymentModel providerPaymentId(String? providerPaymentId);

  PaymentModel providerChargeId(String? providerChargeId);

  PaymentModel clientSecret(String? clientSecret);

  PaymentModel amount(double? amount);

  PaymentModel currency(String? currency);

  PaymentModel status(String? status);

  PaymentModel payload(Map<String, dynamic>? payload);

  PaymentModel paidAt(DateTime? paidAt);

  PaymentModel order(OrderModel? order);

  PaymentModel user(UserModel? user);

  PaymentModel logs(List<PaymentLogModel>? logs);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentModel(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentModel call({
    int? id,
    int? orderId,
    int? userId,
    String? provider,
    String? providerPaymentId,
    String? providerChargeId,
    String? clientSecret,
    double? amount,
    String? currency,
    String? status,
    Map<String, dynamic>? payload,
    DateTime? paidAt,
    OrderModel? order,
    UserModel? user,
    List<PaymentLogModel>? logs,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentModel.copyWith(...)` or call `instanceOfPaymentModel.copyWith.fieldName(value)` for a single field.
class _$PaymentModelCWProxyImpl implements _$PaymentModelCWProxy {
  const _$PaymentModelCWProxyImpl(this._value);

  final PaymentModel _value;

  @override
  PaymentModel id(int? id) => call(id: id);

  @override
  PaymentModel orderId(int? orderId) => call(orderId: orderId);

  @override
  PaymentModel userId(int? userId) => call(userId: userId);

  @override
  PaymentModel provider(String? provider) => call(provider: provider);

  @override
  PaymentModel providerPaymentId(String? providerPaymentId) =>
      call(providerPaymentId: providerPaymentId);

  @override
  PaymentModel providerChargeId(String? providerChargeId) =>
      call(providerChargeId: providerChargeId);

  @override
  PaymentModel clientSecret(String? clientSecret) =>
      call(clientSecret: clientSecret);

  @override
  PaymentModel amount(double? amount) => call(amount: amount);

  @override
  PaymentModel currency(String? currency) => call(currency: currency);

  @override
  PaymentModel status(String? status) => call(status: status);

  @override
  PaymentModel payload(Map<String, dynamic>? payload) => call(payload: payload);

  @override
  PaymentModel paidAt(DateTime? paidAt) => call(paidAt: paidAt);

  @override
  PaymentModel order(OrderModel? order) => call(order: order);

  @override
  PaymentModel user(UserModel? user) => call(user: user);

  @override
  PaymentModel logs(List<PaymentLogModel>? logs) => call(logs: logs);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentModel(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? provider = const $CopyWithPlaceholder(),
    Object? providerPaymentId = const $CopyWithPlaceholder(),
    Object? providerChargeId = const $CopyWithPlaceholder(),
    Object? clientSecret = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? currency = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
    Object? paidAt = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? logs = const $CopyWithPlaceholder(),
  }) {
    return PaymentModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as int?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int?,
      provider: provider == const $CopyWithPlaceholder()
          ? _value.provider
          // ignore: cast_nullable_to_non_nullable
          : provider as String?,
      providerPaymentId: providerPaymentId == const $CopyWithPlaceholder()
          ? _value.providerPaymentId
          // ignore: cast_nullable_to_non_nullable
          : providerPaymentId as String?,
      providerChargeId: providerChargeId == const $CopyWithPlaceholder()
          ? _value.providerChargeId
          // ignore: cast_nullable_to_non_nullable
          : providerChargeId as String?,
      clientSecret: clientSecret == const $CopyWithPlaceholder()
          ? _value.clientSecret
          // ignore: cast_nullable_to_non_nullable
          : clientSecret as String?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as double?,
      currency: currency == const $CopyWithPlaceholder()
          ? _value.currency
          // ignore: cast_nullable_to_non_nullable
          : currency as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as Map<String, dynamic>?,
      paidAt: paidAt == const $CopyWithPlaceholder()
          ? _value.paidAt
          // ignore: cast_nullable_to_non_nullable
          : paidAt as DateTime?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as OrderModel?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserModel?,
      logs: logs == const $CopyWithPlaceholder()
          ? _value.logs
          // ignore: cast_nullable_to_non_nullable
          : logs as List<PaymentLogModel>?,
    );
  }
}

extension $PaymentModelCopyWith on PaymentModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentModel.copyWith(...)` or `instanceOfPaymentModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentModelCWProxy get copyWith => _$PaymentModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) => PaymentModel(
  id: (json['id'] as num?)?.toInt(),
  orderId: (json['order_id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  provider: json['provider'] as String?,
  providerPaymentId: json['provider_payment_id'] as String?,
  providerChargeId: json['provider_charge_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  amount: (json['amount'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  status: json['status'] as String?,
  payload: json['payload'] as Map<String, dynamic>?,
  paidAt: json['paid_at'] == null
      ? null
      : DateTime.parse(json['paid_at'] as String),
  order: json['order'] == null
      ? null
      : OrderModel.fromJson(json['order'] as Map<String, dynamic>),
  user: json['user'] == null
      ? null
      : UserModel.fromJson(json['user'] as Map<String, dynamic>),
  logs: (json['logs'] as List<dynamic>?)
      ?.map((e) => PaymentLogModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'provider': instance.provider,
      'provider_payment_id': instance.providerPaymentId,
      'provider_charge_id': instance.providerChargeId,
      'client_secret': instance.clientSecret,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': instance.status,
      'payload': instance.payload,
      'paid_at': instance.paidAt?.toIso8601String(),
      'order': instance.order?.toJson(),
      'user': instance.user?.toJson(),
      'logs': instance.logs?.map((e) => e.toJson()).toList(),
    };
