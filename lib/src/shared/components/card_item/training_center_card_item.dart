import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';

class TrainingCenterCardItem extends StatelessWidget {
  final TrainingCenterModel center;
  final VoidCallback? onTap;

  const TrainingCenterCardItem({
    super.key,
    required this.center,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final locationParts = <String>[
      if ((center.city ?? '').isNotEmpty) center.city!,
      if ((center.country ?? '').isNotEmpty) center.country!,
    ];

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.surface,
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.school_outlined,
              size: 28,
              color: AppColors.primary,
            ),
            const SizedBox(height: 8),
            Text(
              center.name ?? 'Trung tâm đào tạo',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            if (locationParts.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                locationParts.join(', '),
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
