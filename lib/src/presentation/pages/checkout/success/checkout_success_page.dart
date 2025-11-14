import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';

class CheckoutSuccessPage extends StatefulWidget {
  final String? orderNumber;

  const CheckoutSuccessPage({
    super.key,
    this.orderNumber,
  });

  @override
  State<CheckoutSuccessPage> createState() => _CheckoutSuccessPageState();
}

class _CheckoutSuccessPageState extends State<CheckoutSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const Spacer(),
              _SuccessIcon(),
              const SizedBox(height: 24),
              _Title(),
              const SizedBox(height: 8),
              _Subtitle(orderNumber: widget.orderNumber),
              const Spacer(),
              _Buttons(orderNumber: widget.orderNumber),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class _SuccessIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            offset: const Offset(0, 8),
            blurRadius: 28,
          ),
        ],
      ),
      child: const Icon(
        Icons.check_circle_rounded,
        size: 72,
        color: Colors.green,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Thanh toán thành công',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
      textAlign: TextAlign.center,
    );
  }
}

class _Subtitle extends StatelessWidget {
  final String? orderNumber;

  const _Subtitle({this.orderNumber});

  @override
  Widget build(BuildContext context) {
    final subtitle = orderNumber != null
        ? 'Cảm ơn bạn đã đăng ký khoá học.\nMã đơn hàng: $orderNumber'
        : 'Cảm ơn bạn đã đăng ký khoá học.\nThông tin đơn hàng đã được lưu lại.';

    return Text(
      subtitle,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.textSecondary,
            height: 1.4,
          ),
      textAlign: TextAlign.center,
    );
  }
}

class _Buttons extends StatelessWidget {
  final String? orderNumber;

  const _Buttons({this.orderNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () {
              // TODO: go to order detail
            },
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Xem đơn hàng',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              // TODO: go home
            },
            child: const Text(
              'Quay về trang chủ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
