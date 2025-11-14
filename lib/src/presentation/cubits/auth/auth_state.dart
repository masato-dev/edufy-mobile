import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/user/user_model.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';

part 'auth_state.g.dart';

@CopyWith()
class AuthState extends Equatable {
  final bool isLoading;
  final UserModel? loggedInUser;
  final bool isAuthenticated;
  final ApiException? exception;

  const AuthState({
    this.isLoading = false,
    this.loggedInUser,
    this.isAuthenticated = false,
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        loggedInUser,
        isAuthenticated,
        exception,
      ];
}
