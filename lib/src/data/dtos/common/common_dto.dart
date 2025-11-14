import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common_dto.g.dart';

@JsonSerializable()
@CopyWith()
class CommonRequest {
  @JsonKey(name: 'page', defaultValue: 1)
  final int? page;
  @JsonKey(name: 'per_page', defaultValue: 15)
  final int? perPage;
  @JsonKey(name: 'name')
  final String? name;

  const CommonRequest({
    this.page,
    this.perPage,
    this.name,
  });

  factory CommonRequest.fromJson(Map<String, dynamic> json) => _$CommonRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CommonRequestToJson(this);
}