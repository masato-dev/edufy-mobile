// lib/src/data/models/user_model.dart
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@CopyWith()
@JsonSerializable()
class UserModel {
  final int? id;

  /// Tên hiển thị ngắn (nếu backend có)
  final String? name;

  /// Họ tên đầy đủ (UI đang dùng)
  @JsonKey(name: 'full_name')
  final String? fullName;

  final String? email;

  /// Đường dẫn avatar (UI đang dùng)
  @JsonKey(name: 'avatar_path')
  final String? avatarPath;

  // Tuỳ chọn thêm (nếu backend có), không bắt buộc:
  // @JsonKey(name: 'phone_number')
  // final String? phoneNumber;

  const UserModel({
    this.id,
    this.name,
    this.fullName,
    this.email,
    this.avatarPath,
    // this.phoneNumber,
  });

  /// Tên hiển thị gọn cho UI
  String get displayName => (fullName ?? name ?? '').trim();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
