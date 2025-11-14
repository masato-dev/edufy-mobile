// lib/src/data/models/lesson_media_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/course/course_media_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'lesson_model.dart';

part 'lesson_media_model.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class LessonMediaModel {
  final int? id;

  @JsonKey(name: 'lesson_id')
  final int? lessonId;

  @JsonKey(name: 'course_media_id')
  final int? courseMediaId;

  final String? title;

  @JsonKey(name: 'sort_order')
  final int? sortOrder;

  final LessonModel? lesson;
  final CourseMediaModel? courseMedia;

  const LessonMediaModel({
    this.id,
    this.lessonId,
    this.courseMediaId,
    this.title,
    this.sortOrder,
    this.lesson,
    this.courseMedia,
  });

  factory LessonMediaModel.fromJson(Map<String, dynamic> json) =>
      _$LessonMediaModelFromJson(json);

  Map<String, dynamic> toJson() => _$LessonMediaModelToJson(this);
}
