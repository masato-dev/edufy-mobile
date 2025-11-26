// lib/src/presentation/pages/root/tabs/course/course_tab.dart
import 'package:edufy_mobile/src/core/dependencies/ioc.dart';
import 'package:edufy_mobile/src/data/repositories/export.dart';
import 'package:edufy_mobile/src/presentation/pages/root/tabs/course/course_cubit.dart';
import 'package:edufy_mobile/src/presentation/pages/root/tabs/course/course_state.dart';
import 'package:edufy_mobile/src/shared/components/common/scroll_pagination.dart';
import 'package:edufy_mobile/src/shared/components/list_item/course_list_item.dart';
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseTab extends StatefulWidget {
  const CourseTab({super.key});

  @override
  State<CourseTab> createState() => _CourseTabState();
}

class _CourseTabState extends State<CourseTab> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CourseCubit>(
      create: (_) => CourseCubit(
        courseRepository: getIt<ICourseRepository>(),
      )..initial(),
      child: BlocConsumer<CourseCubit, CourseState>(
        listener: (context, state) {
          final exception = state.exception;
          if (exception != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(exception.message),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading && state.courses.isEmpty) {
            return Scaffold(
              backgroundColor: AppColors.background,
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
              title: const Text('Khoá học'),
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                await context.read<CourseCubit>().refresh();
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: _SearchField(
                      controller: _searchController,
                      initialValue: state.keyword,
                      onSubmitted: (value) {
                        context.read<CourseCubit>().search(value.trim());
                      },
                      onClear: () {
                        _searchController.clear();
                        context.read<CourseCubit>().search('');
                      },
                    ),
                  ),
                  Expanded(
                    child: _CourseList(state: state),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final String initialValue;
  final ValueChanged<String> onSubmitted;
  final VoidCallback onClear;

  const _SearchField({
    required this.controller,
    required this.initialValue,
    required this.onSubmitted,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    if (controller.text != initialValue) {
      controller.text = initialValue;
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      );
    }

    return TextField(
      controller: controller,
      textInputAction: TextInputAction.search,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: 'Tìm kiếm khoá học...',
        prefixIcon: const Icon(Icons.search_rounded),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: onClear,
              )
            : null,
        filled: true,
        fillColor: AppColors.surface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.border.withOpacity(0.8),
            width: 0.6,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.border.withOpacity(0.8),
            width: 0.6,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: AppColors.primary,
            width: 1.2,
          ),
        ),
      ),
    );
  }
}

class _CourseList extends StatelessWidget {
  final CourseState state;

  const _CourseList({required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.courses.isEmpty && !state.isLoading) {
      return ListView(
        padding: const EdgeInsets.fromLTRB(16, 80, 16, 24),
        children: [
          const Icon(
            Icons.menu_book_outlined,
            size: 64,
            color: AppColors.textMuted,
          ),
          const SizedBox(height: 12),
          Text(
            'Chưa có khoá học nào',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            'Vui lòng thử lại sau hoặc thay đổi từ khoá tìm kiếm.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    return ScrollPagination(
      length: state.courses.length,
      currentPage: state.page,
      pageCount: state.pageCount,
      onScrollToEnd: () {
        context.read<CourseCubit>().loadMore();
      },
      itemBuilder: (context, index) {
        final course = state.courses[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
          child: CourseListItem(course: course),
        );
      },
    );
  }
}
