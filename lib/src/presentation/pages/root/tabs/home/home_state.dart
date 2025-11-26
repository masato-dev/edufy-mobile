import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:edufy_mobile/src/core/network/exception/api_exception.dart';
import 'package:edufy_mobile/src/data/models/banner/banner_model.dart';
import 'package:edufy_mobile/src/data/models/export.dart';
import 'package:equatable/equatable.dart';

part 'home_state.g.dart';

@CopyWith()
class HomeState extends Equatable {
  final bool isLoading;
  final List<RibbonModel> ribbons;
  final List<BannerModel> banners;
  final ApiException? exception;

  const HomeState({
    this.isLoading = false,
    this.ribbons = const [],
    this.banners = const [],
    this.exception,
  });

  @override
  List<Object?> get props => [
        isLoading,
        ribbons,
        banners,
        exception,
      ];
}
