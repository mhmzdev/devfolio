import 'package:devfolio/models/about.dart';
import 'package:devfolio/models/basic.dart';
import 'package:devfolio/models/contact.dart';
import 'package:devfolio/models/project.dart';
import 'package:devfolio/models/service_data.dart';
import 'package:devfolio/models/social.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required Basic basic,
    required List<Social> socials,
    required About about,
    required List<ServiceData> services,
    required List<Project> projects,
    required List<Contact> contact,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
