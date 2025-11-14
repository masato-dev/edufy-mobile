import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/app_colors.dart';
import 'package:flutter/material.dart';

class OrderListItem extends StatelessWidget {
  final OrderModel order;
  final VoidCallback? onTap;

  const OrderListItem({
    super.key,
    required this.order,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final total = order.total;
    final totalText =
        total != null ? '${total.toStringAsFixed(0)} đ' : '—';

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              order.orderNumber != null
                  ? 'Đơn hàng #${order.orderNumber}'
                  : 'Đơn hàng #${order.id ?? '-'}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Tổng tiền: $totalText',
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Trạng thái thanh toán: ${order.paymentStatus ?? '—'}',
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.info,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
