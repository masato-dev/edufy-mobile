import 'package:edufy_mobile/src/data/dtos/common/base_response.dart';
import 'package:edufy_mobile/src/shared/types/export.dart';

class PaginationResponse<T> extends BaseResponse {
  final int total;
  final int pageCount;
  final int page;
  final int perPage;
  final List<T>? data;

  PaginationResponse({
    required this.total,
    required this.pageCount,
    required this.page,
    required this.perPage,
    this.data,
    super.message,
    super.status,
    super.statusCode,
  });

  factory PaginationResponse.fromJson(
    Map<String, dynamic> json,
    FromJson<T> modelFromJson, {
    String? listKey,
    String? metaKey,
  }) {
    int asInt(dynamic v, {int fallback = 0}) {
      if (v is int) return v;
      if (v is num) return v.toInt();
      if (v is String) return int.tryParse(v) ?? fallback;
      return fallback;
    }

    List<Map<String, dynamic>> toListOfMap(dynamic v) {
      if (v is List) return v.whereType<Map<String, dynamic>>().toList();
      return const [];
    }

    Map<String, dynamic>? asMap(dynamic v) => v is Map<String, dynamic> ? v : null;

    dynamic getByDotPath(dynamic node, String path) {
      if (node == null || path.isEmpty) return null;
      final parts = path.split('.');
      dynamic cur = node;
      for (final rawSeg in parts) {
        if (cur == null) return null;
        final seg = rawSeg.trim();
        if (seg.isEmpty) continue;

        if (cur is Map<String, dynamic>) {
          cur = cur[seg];
          continue;
        }
        if (cur is List) {
          final idx = int.tryParse(seg);
          if (idx == null || idx < 0 || idx >= cur.length) return null;
          cur = cur[idx];
          continue;
        }
        return null;
      }
      return cur;
    }

    Map<String, dynamic>? extractMeta(Map<String, dynamic> root, dynamic dataNode) {
      Map<String, dynamic>? meta;

      if (metaKey != null && metaKey.isNotEmpty) {
        meta = asMap(getByDotPath(dataNode, metaKey)) ?? asMap(getByDotPath(root, metaKey));
      }

      meta ??= asMap(getByDotPath(dataNode, 'meta')) ?? asMap(getByDotPath(dataNode, 'pagination'));
      meta ??= asMap(root['meta']) ?? asMap(root['pagination']);

      final pg = asMap(meta?['pagination']);
      if (pg != null) {
        meta = {...?meta, ...pg}..remove('pagination');
      }
      return meta;
    }

    dynamic pickPayload(dynamic dataNode) {
      if (listKey != null && listKey.isNotEmpty) {
        final v = getByDotPath(dataNode ?? json, listKey);
        if (v != null) return v;
      }

      if (dataNode is Map<String, dynamic>) {
        if (dataNode.containsKey('data')) return dataNode['data'];
        final entry = dataNode.entries.firstWhere(
          (e) => e.key != 'meta' && e.key != 'pagination' && e.value is List,
          orElse: () => const MapEntry('_none', null),
        );
        return entry.value;
      }
      return dataNode;
    }

    final dynamic dataNode = json['data'];
    final meta = extractMeta(json, dataNode);
    final payload = pickPayload(dataNode);
    final parsedList = toListOfMap(payload).map(modelFromJson).toList();

    int page = asInt(meta?['current_page'] ?? meta?['currentPage'] ?? json['page'], fallback: 1);
    int perPage = asInt(
      meta?['per_page'] ?? meta?['perPage'] ?? meta?['itemsPerPage'] ?? json['per_page'],
      fallback: parsedList.isEmpty ? 0 : parsedList.length,
    );
    int total = asInt(
      meta?['total'] ??
          meta?['totalItems'] ??
          meta?['count'] ??
          meta?['total_count'] ??
          json['total'],
      fallback: parsedList.length,
    );
    int pageCount = asInt(
      meta?['last_page'] ?? meta?['totalPages'] ?? json['page_count'],
      fallback: 0,
    );

    if (pageCount <= 0 && perPage > 0) {
      pageCount = (total / perPage).ceil();
      if (pageCount == 0) pageCount = 1;
    }
    if (pageCount == 0) pageCount = 1;

    final dynamic status = json['status'] ?? json['success'];
    final dynamic statusCode = json['status_code'] ?? json['code'];
    final dynamic message = json['message'];

    return PaginationResponse<T>(
      message: message,
      status: status is bool ? status : null,
      statusCode: statusCode is int ? statusCode : null,
      page: page,
      perPage: perPage,
      total: total,
      pageCount: pageCount,
      data: parsedList,
    );
  }

  @override
  String toString() {
    return 'PaginationResponse<$T>('
        'page: $page, '
        'perPage: $perPage, '
        'total: $total, '
        'pageCount: $pageCount, '
        'status: $status, '
        'statusCode: $statusCode, '
        'message: $message, '
        'dataLength: ${data?.length ?? 0})';
  }
}
