import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edufy_mobile/src/presentation/pages/root/tabs/profile/profile_tab_state.dart';

class ProfileTabCubit extends Cubit<ProfileTabState> {
  ProfileTabCubit() : super(const ProfileTabState());

  void setLoading(bool value) {
    emit(state.copyWith(isLoading: value));
  }

  void setRefreshing(bool value) {
    emit(state.copyWith(isRefreshing: value));
  }

  void setException(ApiException? exception) {
    emit(
      state.copyWith(
        exception: exception,
      ),
    );
  }

  void clearException() {
    emit(state.copyWith(exception: null));
  }
}
