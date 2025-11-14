import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';

class TrainingCenterListItem extends StatelessWidget {
  final TrainingCenterModel center;
  final VoidCallback? onTap;

  const TrainingCenterListItem({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            const Icon(
              Icons.school_outlined,
              size: 32,
              color: AppColors.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    center.name ?? 'Trung tâm đào tạo',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
          ],
        ),
      ),
    );
  }
}
