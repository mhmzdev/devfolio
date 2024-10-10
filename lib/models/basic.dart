import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic.freezed.dart';
part 'basic.g.dart';

@freezed
class Basic with _$Basic {
  const factory Basic({
    required String firstName,
    required String lastName,
    required int age,
    required String email,
    required String phone,
    required String address,
    required List<String> photos,
    required String resume,
  }) = _Basic;

  factory Basic.fromJson(Map<String, Object?> json) => _$BasicFromJson(json);
}
