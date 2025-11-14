// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_log_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentLogModelCWProxy {
  PaymentLogModel id(int? id);

  PaymentLogModel paymentId(int? paymentId);

  PaymentLogModel event(String? event);

  PaymentLogModel level(String? level);

  PaymentLogModel payload(Map<String, dynamic>? payload);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentLogModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentLogModel(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentLogModel call({
    int? id,
    int? paymentId,
    String? event,
    String? level,
    Map<String, dynamic>? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentLogModel.copyWith(...)` or call `instanceOfPaymentLogModel.copyWith.fieldName(value)` for a single field.
class _$PaymentLogModelCWProxyImpl implements _$PaymentLogModelCWProxy {
  const _$PaymentLogModelCWProxyImpl(this._value);

  final PaymentLogModel _value;

  @override
  PaymentLogModel id(int? id) => call(id: id);

  @override
  PaymentLogModel paymentId(int? paymentId) => call(paymentId: paymentId);

  @override
  PaymentLogModel event(String? event) => call(event: event);

  @override
  PaymentLogModel level(String? level) => call(level: level);

  @override
  PaymentLogModel payload(Map<String, dynamic>? payload) =>
      call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentLogModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentLogModel(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentLogModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? paymentId = const $CopyWithPlaceholder(),
    Object? event = const $CopyWithPlaceholder(),
    Object? level = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return PaymentLogModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      paymentId: paymentId == const $CopyWithPlaceholder()
          ? _value.paymentId
          // ignore: cast_nullable_to_non_nullable
          : paymentId as int?,
      event: event == const $CopyWithPlaceholder()
          ? _value.event
          // ignore: cast_nullable_to_non_nullable
          : event as String?,
      level: level == const $CopyWithPlaceholder()
          ? _value.level
          // ignore: cast_nullable_to_non_nullable
          : level as String?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as Map<String, dynamic>?,
    );
  }
}

extension $PaymentLogModelCopyWith on PaymentLogModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentLogModel.copyWith(...)` or `instanceOfPaymentLogModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentLogModelCWProxy get copyWith => _$PaymentLogModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentLogModel _$PaymentLogModelFromJson(Map<String, dynamic> json) =>
    PaymentLogModel(
      id: (json['id'] as num?)?.toInt(),
      paymentId: (json['payment_id'] as num?)?.toInt(),
      event: json['event'] as String?,
      level: json['level'] as String?,
      payload: json['payload'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PaymentLogModelToJson(PaymentLogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_id': instance.paymentId,
      'event': instance.event,
      'level': instance.level,
      'payload': instance.payload,
    };
