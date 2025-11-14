// lib/src/presentation/pages/lesson/detail/lesson_detail_state.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/lesson/lesson_model.dart';

part 'lesson_detail_state.g.dart';

@CopyWith()
class LessonDetailState extends Equatable {
  final bool isLoading;
  final LessonModel? lesson;
  final ApiException? exception;

  const LessonDetailState({
    this.isLoading = false,
    this.lesson,
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        lesson,
        exception,
      ];
}
