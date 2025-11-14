import 'package:edufy_mobile/src/data/models/user/user_model.dart';
import 'package:edufy_mobile/src/shared/types/api_result.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/dtos/common/object_response.dart';

abstract class IAuthRepository {
  Future<ApiResult<ObjectResponse<UserModel>, ApiException>> me();
}
