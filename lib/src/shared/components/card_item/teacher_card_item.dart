import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';

class TeacherCardItem extends StatelessWidget {
  final TeacherModel teacher;
  final VoidCallback? onTap;

  const TeacherCardItem({
    super.key,
    required this.teacher,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final centerName = teacher.trainingCenter?.name ?? '';

    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _TeacherAvatar(path: teacher.avatarPath),
          const SizedBox(height: 8),
          Text(
            teacher.fullName ?? 'Giảng viên',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          if ((teacher.title ?? '').isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              teacher.title!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ],
          if (centerName.isNotEmpty) ...[
            const SizedBox(height: 2),
            Text(
              centerName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textMuted,
              ),
            ),
          ],
        ],
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
      radius: 32,
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
