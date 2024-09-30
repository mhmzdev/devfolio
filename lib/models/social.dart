import 'package:freezed_annotation/freezed_annotation.dart';

part 'social.freezed.dart';
part 'social.g.dart';

@freezed
class Social with _$Social {
  const factory Social({
    required String icon,
    required String url,
  }) = _Social;

  factory Social.fromJson(Map<String, Object?> json) => _$SocialFromJson(json);
}
