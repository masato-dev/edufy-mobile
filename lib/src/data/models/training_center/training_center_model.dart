// lib/src/data/models/training_center_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'training_center_model.g.dart';

@CopyWith()
@JsonSerializable()
class TrainingCenterModel {
  final int? id;
  final String? name;
  final String? slug;
  final String? code;
  final String? email;
  final String? phone;
  final String? website;

  @JsonKey(name: 'address_line1')
  final String? addressLine1;
  @JsonKey(name: 'address_line2')
  final String? addressLine2;

  final String? city;
  final String? state;
  final String? country;

  @JsonKey(name: 'postal_code')
  final String? postalCode;

  final String? timezone;
  final Map<String, dynamic>? meta;

  const TrainingCenterModel({
    this.id,
    this.name,
    this.slug,
    this.code,
    this.email,
    this.phone,
    this.website,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.timezone,
    this.meta,
  });

  factory TrainingCenterModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingCenterModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrainingCenterModelToJson(this);
}
