import 'package:edufy_mobile/src/data/dtos/common/base_response.dart';

class ObjectResponse<T> extends BaseResponse {
  T? data;

  ObjectResponse({super.status, super.statusCode, super.message, this.data});

  ObjectResponse.fromJson(Map<String, dynamic> json, [T Function(Map<String, dynamic>)? fromJson])
    : super.fromJson(json) {
    final rawData = json['data'];

    if (rawData == null) {
      data = null;
    } else if (fromJson != null && rawData is Map<String, dynamic>) {
      data = fromJson(rawData);
    } else {
      data = rawData as T;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final map = super.toJson();
    map['data'] = data;
    return map;
  }
}
