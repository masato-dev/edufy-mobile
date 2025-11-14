import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/dtos/common/object_response.dart';
import 'package:edufy_mobile/src/data/models/user/user_model.dart';
import 'package:edufy_mobile/src/data/repositories/auth/i_auth_repository.dart';
import 'package:edufy_mobile/src/shared/types/api_result.dart';

class MockAuthRepository implements IAuthRepository {
  const MockAuthRepository();

  static const _mockUser = UserModel(
    id: 1,
    name: 'Demo User',
    email: 'demo@edufy.vn',
  );

  @override
  Future<ApiResult<ObjectResponse<UserModel>, ApiException>> me() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return ApiResult(
      response: ObjectResponse<UserModel>(data: _mockUser),
    );
  }
}
