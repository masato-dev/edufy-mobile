import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';

class TeacherListItem extends StatelessWidget {
  final TeacherModel teacher;
  final VoidCallback? onTap;

  const TeacherListItem({
    super.key,
    required this.teacher,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final centerName = teacher.trainingCenter?.name;
    final subtitleParts = <String>[
      if ((teacher.title ?? '').isNotEmpty) teacher.title!,
      if ((centerName ?? '').isNotEmpty) centerName!,
    ];

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            _TeacherAvatar(path: teacher.avatarPath),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    teacher.fullName ?? 'Giảng viên',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  if (subtitleParts.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitleParts.join(' · '),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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

class _TeacherAvatar extends StatelessWidget {
  final String? path;

  const _TeacherAvatar({this.path});

  @override
  Widget build(BuildContext context) {
    final hasImage = path != null && path!.isNotEmpty;

    return CircleAvatar(
      radius: 28,
      backgroundColor: AppColors.surfaceMuted,
      backgroundImage: hasImage ? NetworkImage(path!) : null,
      child: !hasImage
          ? const Icon(
              Icons.person_outline,
              color: AppColors.textSecondary,
            )
          : null,
    );
  }
}
