import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';
part 'work.g.dart';

@freezed
class Work with _$Work {
  const factory Work({
    required String image,
    required String url,
    required int height,
  }) = _Work;

  factory Work.fromJson(Map<String, Object?> json) => _$WorkFromJson(json);
}
