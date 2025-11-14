// lib/src/data/models/teacher_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/training_center/training_center_model.dart';
import 'package:json_annotation/json_annotation.dart';


part 'teacher_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class TeacherModel {
  final int? id;

  @JsonKey(name: 'training_center_id')
  final int? trainingCenterId;

  @JsonKey(name: 'full_name')
  final String? fullName;

  final String? slug;
  final String? email;
  final String? phone;
  final String? title;
  final String? bio;

  @JsonKey(name: 'avatar_path')
  final String? avatarPath;

  @JsonKey(name: 'is_active')
  final bool? isActive;

  final List<String>? skills;

  final TrainingCenterModel? trainingCenter;

  const TeacherModel({
    this.id,
    this.trainingCenterId,
    this.fullName,
    this.slug,
    this.email,
    this.phone,
    this.title,
    this.bio,
    this.avatarPath,
    this.isActive,
    this.skills,
    this.trainingCenter,
  });

  factory TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherModelToJson(this);
}
