// lib/src/data/models/course_schedule_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/course/course_model.dart';
import 'package:edufy_mobile/src/data/models/teacher/teacher_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'course_schedule_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class CourseScheduleModel {
  final int? id;

  @JsonKey(name: 'course_id')
  final int? courseId;

  @JsonKey(name: 'teacher_id')
  final int? teacherId;

  @JsonKey(name: 'day_of_week')
  final int? dayOfWeek; // 1-7

  @JsonKey(name: 'start_time')
  final String? startTime; // "HH:mm:ss"

  @JsonKey(name: 'end_time')
  final String? endTime;

  final String? timezone;
  final String? location;
  final String? room;

  @JsonKey(name: 'active_from')
  final DateTime? activeFrom;

  @JsonKey(name: 'active_to')
  final DateTime? activeTo;

  @JsonKey(name: 'is_active')
  final bool? isActive;

  /// PHP cast 'notes' => 'array'
  final Map<String, dynamic>? notes;

  final CourseModel? course;
  final TeacherModel? teacher;

  const CourseScheduleModel({
    this.id,
    this.courseId,
    this.teacherId,
    this.dayOfWeek,
    this.startTime,
    this.endTime,
    this.timezone,
    this.location,
    this.room,
    this.activeFrom,
    this.activeTo,
    this.isActive,
    this.notes,
    this.course,
    this.teacher,
  });

  factory CourseScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$CourseScheduleModelFromJson(json);

  Map<String, dynamic> toJson() => _$CourseScheduleModelToJson(this);
}
