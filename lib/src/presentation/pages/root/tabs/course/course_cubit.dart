// lib/src/presentation/pages/root/tabs/course/course_cubit.dart
import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/data/repositories/export.dart';
import 'package:edufy_mobile/src/presentation/pages/root/tabs/course/course_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseCubit extends Cubit<CourseState> {
  final ICourseRepository courseRepository;

  CourseCubit({required this.courseRepository}) : super(const CourseState());

  Future<void> initial() async {
    if (state.isLoading) return;

    emit(
      state.copyWith(
        isLoading: true,
        exception: null,
        page: 1,
        pageCount: 1,
      ),
    );

    final result = await courseRepository.index(
      page: 1,
      keyword: state.keyword.isEmpty ? null : state.keyword,
    );

    final exception = result.exception;
    final response = result.response;

    if (exception != null) {
      emit(
        state.copyWith(
          isLoading: false,
          exception: exception,
          courses: const <CourseModel>[],
          page: 1,
          pageCount: 1,
        ),
      );
      return;
    }

    final courses = response?.data ?? const <CourseModel>[];
    final page = response?.page ?? 1;
    final pageCount = response?.pageCount ?? 1;

    emit(
      state.copyWith(
        isLoading: false,
        courses: courses,
        page: page,
        pageCount: pageCount,
        exception: null,
      ),
    );
  }

  Future<void> refresh() async {
    await initial();
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || state.page >= state.pageCount) return;

    final nextPage = state.page + 1;

    emit(
      state.copyWith(
        isLoadingMore: true,
        exception: null,
      ),
    );

    final result = await courseRepository.index(
      page: nextPage,
      keyword: state.keyword.isEmpty ? null : state.keyword,
    );

    final exception = result.exception;
    final response = result.response;

    if (exception != null) {
      emit(
        state.copyWith(
          isLoadingMore: false,
          exception: exception,
        ),
      );
      return;
    }

    final newCourses = response?.data ?? const <CourseModel>[];
    final page = response?.page ?? nextPage;
    final pageCount = response?.pageCount ?? state.pageCount;

    emit(
      state.copyWith(
        isLoadingMore: false,
        courses: [...state.courses, ...newCourses],
        page: page,
        pageCount: pageCount,
        exception: null,
      ),
    );
  }

  Future<void> search(String keyword) async {
    if (keyword == state.keyword) return;

    emit(
      state.copyWith(
        keyword: keyword,
      ),
    );

    await initial();
  }
}
