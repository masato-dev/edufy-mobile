// lib/src/presentation/pages/training_center/detail/training_center_detail_state.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/training_center/training_center_model.dart';

part 'training_center_detail_state.g.dart';

@CopyWith()
class TrainingCenterDetailState extends Equatable {
  final bool isLoading;
  final TrainingCenterModel? center;
  final ApiException? exception;

  const TrainingCenterDetailState({
    this.isLoading = false,
    this.center,
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        center,
        exception,
      ];
}
