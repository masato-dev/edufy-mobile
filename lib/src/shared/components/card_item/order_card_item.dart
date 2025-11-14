import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';

class OrderCardItem extends StatelessWidget {
  final OrderModel order;
  final VoidCallback? onTap;

  const OrderCardItem({
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
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.surface,
          border: Border.all(color: AppColors.border),
        ),
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
            const SizedBox(height: 6),
            Text(
              'Tổng tiền: $totalText',
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Thanh toán: ${order.paymentStatus ?? '—'}',
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
