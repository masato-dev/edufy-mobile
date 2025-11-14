// lib/src/presentation/pages/order/detail/order_detail_state.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/order/order_model.dart';

part 'order_detail_state.g.dart';

@CopyWith()
class OrderDetailState extends Equatable {
  final bool isLoading;
  final OrderModel? order;
  final ApiException? exception;
  final bool isCancelling;

  const OrderDetailState({
    this.isLoading = false,
    this.order,
    this.exception,
    this.isCancelling = false,
  });

  @override
  List<Object?> get props => [
        isLoading,
        order,
        exception,
        isCancelling,
      ];
}
