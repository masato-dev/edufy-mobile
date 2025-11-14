import 'package:edufy_mobile/src/data/dtos/common/export.dart';
import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:edufy_mobile/src/shared/enums/enums.dart';
import 'package:edufy_mobile/src/shared/types/api_result.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';

import 'i_course_repository.dart';

class MockCourseRepository implements ICourseRepository {
  // Data mock dùng chung
  static final List<CourseModel> _mockCourses = [
    CourseModel(
      id: 1,
      title: 'Flutter Mobile Development',
      shortDescription: 'Học Flutter từ cơ bản đến nâng cao.',
      level: CourseLevel.beginner,
      tuitionFee: 1_990_000,
      coverImagePath: 'https://picsum.photos/400/200',
    ),
    CourseModel(
      id: 2,
      title: 'Laravel API Mastery',
      shortDescription: 'Xây dựng REST API chuẩn thực chiến.',
      level: CourseLevel.intermediate,
      tuitionFee: 2_490_000,
      coverImagePath: 'https://picsum.photos/400/210',
    ),
  ];

  @override
  Future<ApiResult<PaginationResponse<CourseModel>, ApiException>> index({
    int page = 1,
    String? keyword,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    // Lọc theo keyword (nếu có)
    final lowerKeyword = keyword?.trim().toLowerCase();
    final filtered = (lowerKeyword == null || lowerKeyword.isEmpty)
        ? _mockCourses
        : _mockCourses
            .where(
              (c) =>
                  (c.title?.toLowerCase() ?? '').contains(lowerKeyword) ||
                  (c.shortDescription ?? '').toLowerCase().contains(lowerKeyword),
            )
            .toList();

    // Fake pagination
    const pageSize = 10;
    final start = (page - 1) * pageSize;
    final end = (start + pageSize).clamp(0, filtered.length);
    final items = start >= filtered.length ? <CourseModel>[] : filtered.sublist(start, end);

    final pagination = PaginationResponse<CourseModel>(
      data: items,
      pageCount: (filtered.length / pageSize).ceil(),
      total: filtered.length,
      page: page,
      perPage: pageSize,
    );

    return ApiResult<PaginationResponse<CourseModel>, ApiException>(
      response: pagination,
    );
  }

  @override
  Future<ApiResult<ObjectResponse<CourseModel>, ApiException>> getDetail(int id) async {
    await Future.delayed(const Duration(milliseconds: 250));

    // Tìm trong mock list, nếu không có thì trả về mock cứng
    final base = _mockCourses.firstWhere(
      (c) => c.id == id,
      orElse: () => CourseModel(
        id: id,
        title: 'Flutter Mobile Development',
        shortDescription: 'Khoá học Flutter chi tiết dành cho mobile dev.',
        level: CourseLevel.beginner,
        tuitionFee: 1_990_000,
        coverImagePath: 'https://picsum.photos/400/200',
      ),
    );

    final model = CourseModel(
      id: base.id,
      title: base.title,
      shortDescription: base.shortDescription,
      description: 'Khoá học Flutter chi tiết dành cho mobile dev.',
      level: base.level,
      tuitionFee: base.tuitionFee,
      coverImagePath: base.coverImagePath,
      // tuỳ model của bạn có nullable hay không:
      schedules: const [],
      media: const [],
      teachers: const [],
    );

    final objectResponse = ObjectResponse<CourseModel>(
      data: model,
    );

    return ApiResult<ObjectResponse<CourseModel>, ApiException>(
      response: objectResponse,
    );
  }
}
