// lib/src/data/models/fcm_token_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fcm_token_model.g.dart';

@CopyWith()
@JsonSerializable()
class FcmTokenModel {
  final int? id;

  @JsonKey(name: 'user_id')
  final int? userId;

  final String? token;

  @JsonKey(name: 'device_id')
  final String? deviceId;

  @JsonKey(name: 'device_type')
  final String? deviceType;

  final String? status;

  const FcmTokenModel({
    this.id,
    this.userId,
    this.token,
    this.deviceId,
    this.deviceType,
    this.status,
  });

  factory FcmTokenModel.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenModelFromJson(json);

  Map<String, dynamic> toJson() => _$FcmTokenModelToJson(this);
}
