import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';

part 'profile_tab_state.g.dart';

@CopyWith()
class ProfileTabState extends Equatable {
  final bool isLoading;
  final bool isRefreshing;
  final ApiException? exception;

  const ProfileTabState({
    this.isLoading = false,
    this.isRefreshing = false,
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        isRefreshing,
        exception,
      ];
}
