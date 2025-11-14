// lib/src/presentation/pages/training_center/detail/training_center_detail_page.dart
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edufy_mobile/src/data/models/training_center/training_center_model.dart';
import 'package:edufy_mobile/src/data/repositories/training_center/i_training_center_repository.dart';
import 'training_center_detail_cubit.dart';
import 'training_center_detail_state.dart';

class TrainingCenterDetailPage extends StatelessWidget {
  final int centerId;

  const TrainingCenterDetailPage({
    super.key,
    required this.centerId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TrainingCenterDetailCubit(
        repository: context.read<ITrainingCenterRepository>(),
      )..load(centerId),
      child: BlocBuilder<TrainingCenterDetailCubit, TrainingCenterDetailState>(
        builder: (context, state) {
          final center = state.center;

          return Scaffold(
            appBar: AppBar(
              title: Text(
                center?.name ?? 'Trung tâm đào tạo',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            body: Builder(
              builder: (context) {
                if (state.isLoading && center == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.exception != null && center == null) {
                  return _ErrorView(
                    message: state.exception?.message ?? 'Đã có lỗi xảy ra',
                    onRetry: () => context
                        .read<TrainingCenterDetailCubit>()
                        .load(centerId),
                  );
                }

                if (center == null) {
                  return const Center(child: Text('Không tìm thấy trung tâm'));
                }

                return RefreshIndicator(
                  onRefresh: () => context
                      .read<TrainingCenterDetailCubit>()
                      .refresh(centerId),
                  child: _TrainingCenterDetailBody(center: center),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        const SizedBox(height: 80),
        Icon(
          Icons.error_outline,
          size: 48,
          color: AppColors.error,
        ),
        const SizedBox(height: 16),
        Text(
          'Có lỗi xảy ra',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
        ),
        const SizedBox(height: 24),
        Center(
          child: FilledButton(
            onPressed: onRetry,
            child: const Text('Thử lại'),
          ),
        ),
      ],
    );
  }
}

class _TrainingCenterDetailBody extends StatelessWidget {
  final TrainingCenterModel center;

  const _TrainingCenterDetailBody({
    required this.center,
  });

  String _buildAddress() {
    final parts = <String>[
      center.addressLine1 ?? '',
      center.addressLine2 ?? '',
      center.city ?? '',
      center.state ?? '',
      center.postalCode ?? '',
      center.country ?? '',
    ].where((e) => e.trim().isNotEmpty).toList();

    return parts.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    final address = _buildAddress();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          center.name ?? '',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w700,
              ),
        ),
        if (center.code != null && center.code!.trim().isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            'Mã trung tâm: ${center.code}',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
        ],
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            if (center.city != null && center.city!.trim().isNotEmpty)
              _Chip(
                icon: Icons.location_city_rounded,
                label: center.city!,
              ),
            if (center.country != null && center.country!.trim().isNotEmpty)
              _Chip(
                icon: Icons.public_rounded,
                label: center.country!,
              ),
            if (center.timezone != null && center.timezone!.trim().isNotEmpty)
              _Chip(
                icon: Icons.schedule_rounded,
                label: center.timezone!,
              ),
          ],
        ),
        if (address.isNotEmpty) ...[
          const SizedBox(height: 24),
          _Section(
            title: 'Địa chỉ',
            child: Text(
              address,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
            ),
          ),
        ],
        if ((center.email != null && center.email!.trim().isNotEmpty) ||
            (center.phone != null && center.phone!.trim().isNotEmpty) ||
            (center.website != null && center.website!.trim().isNotEmpty)) ...[
          const SizedBox(height: 24),
          _Section(
            title: 'Liên hệ',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (center.email != null && center.email!.trim().isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.email_outlined,
                          size: 18,
                          color: AppColors.textSecondary,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            center.email!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.textPrimary,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (center.phone != null && center.phone!.trim().isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.phone_outlined,
                          size: 18,
                          color: AppColors.textSecondary,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            center.phone!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.textPrimary,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (center.website != null && center.website!.trim().isNotEmpty)
                  Row(
                    children: [
                      const Icon(
                        Icons.language_rounded,
                        size: 18,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          center.website!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: AppColors.primary,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _Chip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: AppColors.surfaceMuted,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: AppColors.textSecondary,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final Widget child;

  const _Section({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
