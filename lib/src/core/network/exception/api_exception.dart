import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';

@JsonSerializable()
class ApiException implements Exception {
  final bool? status;
  final String message;
  final Map<String, dynamic>? errors;

  @JsonKey(ignore: true)
  final int? httpStatus;

  const ApiException({
    required this.message,
    this.status,
    this.errors,
    this.httpStatus,
  });

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);

  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);

  factory ApiException.fromDioError(DioException dioError) {
    Map<String, dynamic>? body;
    final res = dioError.response;
    final data = res?.data;

    if (data is Map<String, dynamic>) {
      body = data;
    } else if (data is Map) {
      body = data.map((k, v) => MapEntry(k.toString(), v));
    } else if (data is String) {
      try {
        final decoded = jsonDecode(data);
        if (decoded is Map) {
          body = decoded.map((k, v) => MapEntry(k.toString(), v));
        }
      } catch (_) {}
    }

    final statusCode = res?.statusCode;

    bool? status;
    if (body != null && body.containsKey('status') && body['status'] is bool) {
      status = body['status'] as bool;
    } else {
      status = null;
    }

    final rawMsg = body?['message'];
    final msgStr = rawMsg?.toString();
    final String message = (msgStr != null && msgStr.trim().isNotEmpty)
        ? msgStr
        : _fallbackMessageByHttp(statusCode);

    final Map<String, dynamic>? errors = body?['errors'] is Map
        ? Map<String, dynamic>.from(body!['errors'] as Map)
        : null;

    if (body != null) {
      return ApiException(
        status: status,
        message: message,
        errors: errors,
        httpStatus: statusCode,
      );
    }

    return ApiException(
      message: _messageByDioType(dioError),
      status: false,
      errors: null,
      httpStatus: statusCode,
    );
  }

  static String _messageByDioType(DioException e) {
    switch (e.type) {
      case DioExceptionType.cancel:
        return "Request to API server was cancelled";
      case DioExceptionType.connectionTimeout:
        return "Connection timeout with API server";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout in connection with API server";
      case DioExceptionType.sendTimeout:
        return "Send timeout in connection with API server";
      case DioExceptionType.badResponse:
        return _fallbackMessageByHttp(e.response?.statusCode);
      case DioExceptionType.unknown:
        if (e.error is SocketException ||
            (e.message ?? '').toLowerCase().contains('socketexception')) {
          return 'Không có kết nối mạng';
        }
        return 'Đã xảy ra lỗi, vui lòng thử lại sau!';
      default:
        return 'Đã xảy ra lỗi, vui lòng thử lại sau!';
    }
  }

  static String _fallbackMessageByHttp(int? status) {
    switch (status) {
      case 400:
        return 'Yêu cầu không hợp lệ';
      case 401:
        return 'Không được phép. Vui lòng đăng nhập lại';
      case 403:
        return 'Bị từ chối truy cập';
      case 404:
        return 'Không tìm thấy tài nguyên';
      case 500:
        return 'Lỗi máy chủ';
      case 502:
        return 'Bad gateway';
      case 503:
        return 'Dịch vụ tạm thời không sẵn sàng';
      default:
        return 'Đã xảy ra lỗi, vui lòng thử lại sau!';
    }
  }

  @override
  String toString() => message;
}
