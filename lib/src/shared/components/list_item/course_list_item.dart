import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/app_colors.dart';
import 'package:flutter/material.dart';

class CourseListItem extends StatelessWidget {
  final CourseModel course;
  final VoidCallback? onTap;

  const CourseListItem({
    super.key,
    required this.course,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final centerName = course.trainingCenter?.name ?? 'Trung tâm đào tạo';
    final levelLabel = course.level?.name ?? '';
    final statusLabel = course.status?.name ?? '';

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            _CourseThumbnail(path: course.coverImagePath),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title ?? 'Khoá học',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    centerName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  if (levelLabel.isNotEmpty || statusLabel.isNotEmpty)
                    Text(
                      [
                        if (levelLabel.isNotEmpty) levelLabel,
                        if (statusLabel.isNotEmpty) statusLabel,
                      ].join(' · '),
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textMuted,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CourseThumbnail extends StatelessWidget {
  final String? path;

  const _CourseThumbnail({this.path});

  @override
  Widget build(BuildContext context) {
    final hasImage = path != null && path!.isNotEmpty;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 72,
        height: 72,
        child: hasImage
            ? Image.network(
                path!,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    Container(color: AppColors.surfaceMuted),
              )
            : Container(
                color: AppColors.surfaceMuted,
                child: const Icon(
                  Icons.menu_book_outlined,
                  color: AppColors.textSecondary,
                ),
              ),
      ),
    );
  }
}
