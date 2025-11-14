import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:equatable/equatable.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';

part 'training_center_listing_state.g.dart';

@CopyWith()
class TrainingCenterListingState extends Equatable {
  final bool isLoading;
  final List<TrainingCenterModel> items;
  final int page;
  final int pageCount;
  final ApiException? exception;

  const TrainingCenterListingState({
    this.isLoading = false,
    this.items = const [],
    this.page = 1,
    this.pageCount = 1,
    this.exception,
  });

  @override
  List<Object?> get props => [
    isLoading,
    items,
    page,
    pageCount,
    exception,
  ];
}
