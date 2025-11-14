import 'package:edufy_mobile/src/core/network/api_client.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/data/repositories/base_repository.dart';
import 'package:edufy_mobile/src/shared/configs/app_endpoints.dart';
import 'package:edufy_mobile/src/shared/types/api_result.dart';

import 'i_ribbon_repository.dart';

class RibbonRepository extends BaseRepository implements IRibbonRepository {
  RibbonRepository({required ApiClient apiClient}) : super(dio: apiClient);

  @override
  Future<ApiResult<List<RibbonModel>, ApiException>> getHomeRibbons() {
    return get<List<RibbonModel>>(
      endpoint: AppEndpoints.ribbons,
      fromMap: (json) {
        final list = (json['data'] ?? json) as List;
        return list
            .map((e) => RibbonModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }
}
