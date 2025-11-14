// lib/src/presentation/pages/training_center/detail/training_center_detail_cubit.dart
import 'package:edufy_mobile/src/data/repositories/training_center/i_training_center_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'training_center_detail_state.dart';

class TrainingCenterDetailCubit extends Cubit<TrainingCenterDetailState> {
  final ITrainingCenterRepository repository;

  TrainingCenterDetailCubit({required this.repository})
      : super(const TrainingCenterDetailState());

  Future<void> load(int id) async {
    emit(state.copyWith(isLoading: true, exception: null));

    final apiResult = await repository.getDetail(id);

    apiResult.when(
      success: (response) {
        emit(
          state.copyWith(
            isLoading: false,
            center: response.data,
            exception: null,
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            isLoading: false,
            exception: error,
          ),
        );
      },
    );
  }

  Future<void> refresh(int id) async {
    await load(id);
  }
}
