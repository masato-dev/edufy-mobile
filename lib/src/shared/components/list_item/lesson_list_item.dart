import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/app_colors.dart';
import 'package:flutter/material.dart';

class LessonListItem extends StatelessWidget {
  final LessonModel lesson;
  final VoidCallback? onTap;

  const LessonListItem({
    super.key,
    required this.lesson,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final index = lesson.sortOrder;
    final leadingText = index != null ? index.toString() : '•';

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: AppColors.primary.withOpacity(0.08),
              child: Text(
                leadingText,
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                lesson.title ?? 'Bài học',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
