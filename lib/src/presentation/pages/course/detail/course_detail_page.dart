import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/data/repositories/course/i_course_repository.dart';
import 'course_detail_cubit.dart';
import 'course_detail_state.dart';

class CourseDetailPage extends StatefulWidget {
  final int courseId;
  const CourseDetailPage({
    super.key,
    required this.courseId,
  });

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseDetailCubit(
        courseRepository: context.read<ICourseRepository>(),
      )..load(widget.courseId),
      child: BlocBuilder<CourseDetailCubit, CourseDetailState>(
        builder: (context, state) {
          final course = state.course;

          return Scaffold(
            appBar: AppBar(
              title: Text(
                course?.title ?? 'Chi tiết khoá học',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            body: Builder(
              builder: (context) {
                if (state.isLoading && course == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state.exception != null && course == null) {
                  return _ErrorView(
                    message: state.exception?.message ?? 'Đã có lỗi xảy ra',
                    onRetry: () => context
                        .read<CourseDetailCubit>()
                        .load(widget.courseId),
                  );
                }

                if (course == null) {
                  return const Center(
                    child: Text('Không tìm thấy khoá học'),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () =>
                      context.read<CourseDetailCubit>().refresh(widget.courseId),
                  child: _CourseDetailBody(course: course),
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

class _CourseDetailBody extends StatelessWidget {
  final CourseModel course;

  const _CourseDetailBody({
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _CourseHeader(course: course),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CourseMetaSection(course: course),
              const SizedBox(height: 16),
              if (course.description != null &&
                  course.description!.trim().isNotEmpty)
                _Section(
                  title: 'Giới thiệu khoá học',
                  child: Text(
                    course.description!,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                  ),
                )
              else if (course.shortDescription != null &&
                  course.shortDescription!.trim().isNotEmpty)
                _Section(
                  title: 'Giới thiệu khoá học',
                  child: Text(
                    course.shortDescription!,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                  ),
                ),
              if (course.teachers != null &&
                  course.teachers!.isNotEmpty) ...[
                const SizedBox(height: 16),
                _Section(
                  title: 'Giảng viên',
                  child: Column(
                    children: course.teachers!
                        .map(
                          (t) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundColor: AppColors.surfaceMuted,
                              backgroundImage: t.avatarPath != null
                                  ? NetworkImage(t.avatarPath!)
                                  : null,
                              child: t.avatarPath == null
                                  ? Text(
                                      (t.fullName ?? 'GV')
                                          .substring(0, 1)
                                          .toUpperCase(),
                                      style: const TextStyle(
                                        color: AppColors.textPrimary,
                                      ),
                                    )
                                  : null,
                            ),
                            title: Text(
                              t.fullName ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            subtitle: t.title != null
                                ? Text(
                                    t.title!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: AppColors.textSecondary,
                                        ),
                                  )
                                : null,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
              if (course.lessons != null &&
                  course.lessons!.isNotEmpty) ...[
                const SizedBox(height: 16),
                _Section(
                  title: 'Nội dung khoá học',
                  child: Column(
                    children: course.lessons!
                        .map(
                          (l) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              radius: 16,
                              backgroundColor: AppColors.primary.withOpacity(0.1),
                              child: Text(
                                '${l.sortOrder ?? 0}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            title: Text(
                              l.title ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: AppColors.textPrimary,
                                  ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _CourseHeader extends StatelessWidget {
  final CourseModel course;

  const _CourseHeader({
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    final image = course.coverImagePath;
    final centerName = course.trainingCenter?.name ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: image != null && image.isNotEmpty
              ? Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.1),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      bottom: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (centerName.isNotEmpty)
                            Text(
                              centerName,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: Colors.white70,
                                  ),
                            ),
                          const SizedBox(height: 4),
                          Text(
                            course.title ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Container(
                  color: AppColors.surfaceMuted,
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (centerName.isNotEmpty)
                        Text(
                          centerName,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                        ),
                      const SizedBox(height: 4),
                      Text(
                        course.title ?? '',
                        style:
                            Theme.of(context).textTheme.titleLarge?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w700,
                                ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}

class _CourseMetaSection extends StatelessWidget {
  final CourseModel course;

  const _CourseMetaSection({
    required this.course,
  });

  String _formatCurrency(num? value) {
    if (value == null) return '';
    return '${value.toStringAsFixed(0)}₫';
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final start = _formatDate(course.startDate);
    final end = _formatDate(course.endDate);
    final hasDate = start.isNotEmpty || end.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (course.tuitionFee != null)
          Row(
            children: [
              Text(
                _formatCurrency(course.tuitionFee!),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(width: 8),
              if (course.durationHours != null)
                Text(
                  '${course.durationHours} giờ học',
                  style:
                      Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                ),
            ],
          ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            if (course.level != null)
              _Chip(
                icon: Icons.bar_chart_rounded,
                label: course.level!.name,
              ),
            if (course.capacity != null)
              _Chip(
                icon: Icons.group_rounded,
                label: '${course.capacity} học viên',
              ),
            if (hasDate)
              _Chip(
                icon: Icons.event_rounded,
                label: start.isNotEmpty && end.isNotEmpty
                    ? '$start - $end'
                    : (start.isNotEmpty ? start : end),
              ),
          ],
        ),
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
