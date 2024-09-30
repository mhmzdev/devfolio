import 'package:devfolio/models/work.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'about.freezed.dart';
part 'about.g.dart';

@freezed
class About with _$About {
  const factory About({
    required String description,
    required List<String> tech,
    required List<Work> works,
  }) = _About;

  factory About.fromJson(Map<String, Object?> json) => _$AboutFromJson(json);
}
