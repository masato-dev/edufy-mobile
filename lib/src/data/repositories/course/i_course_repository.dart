import 'package:edufy_mobile/src/data/dtos/common/export.dart';
import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/types/api_result.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';

abstract class ICourseRepository {
  Future<ApiResult<PaginationResponse<CourseModel>, ApiException>> index({ int page = 1, String? keyword });
  Future<ApiResult<ObjectResponse<CourseModel>, ApiException>> getDetail(int id);
}
