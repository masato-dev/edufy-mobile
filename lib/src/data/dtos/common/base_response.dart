abstract class BaseResponse {
  bool? status;
  int? statusCode;
  String? message;

  BaseResponse({this.status, this.statusCode, this.message});

  fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
  }

  BaseResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = status;
    data['status_code'] = statusCode;
    data['message'] = message;
    return data;
  }
}
