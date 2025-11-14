import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/export.dart';

part 'course_detail_state.g.dart';

@CopyWith()
class CourseDetailState extends Equatable {
  final bool isLoading;
  final CourseModel? course;
  final ApiException? exception;

  const CourseDetailState({
    this.isLoading = false,
    this.course,
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        course,
        exception,
      ];
}
