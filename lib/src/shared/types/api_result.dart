import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
part 'api_result.g.dart';

@CopyWith()
class ApiResult<T, V> {
  final T? response;
  final V? exception;

  const ApiResult({this.response, this.exception});

  bool get isSuccess => response != null && exception == null;

  Future<void> when({
    required FutureOr<void> Function(T data) success,
    required FutureOr<void> Function(V error) failure,
  }) async {
    if (isSuccess && response != null) {
      await success(response as T);
    } else if (exception != null) {
      await failure(exception as V);
    }
  }
}
