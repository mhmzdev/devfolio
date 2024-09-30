import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_data.freezed.dart';
part 'service_data.g.dart';

@freezed
class ServiceData with _$ServiceData {
  const factory ServiceData({
    required String icon,
    required String title,
  }) = _ServiceData;

  factory ServiceData.fromJson(Map<String, Object?> json) =>
      _$ServiceDataFromJson(json);
}
