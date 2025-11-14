import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/teacher/teacher_model.dart';

part 'teacher_detail_state.g.dart';

@CopyWith()
class TeacherDetailState extends Equatable {
  final bool isLoading;
  final TeacherModel? teacher;
  final ApiException? exception;

  const TeacherDetailState({
    this.isLoading = false,
    this.teacher,
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        teacher,
        exception,
      ];
}
