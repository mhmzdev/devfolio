// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceData _$ServiceDataFromJson(Map<String, dynamic> json) {
  return _ServiceData.fromJson(json);
}

/// @nodoc
mixin _$ServiceData {
  String get icon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ServiceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceDataCopyWith<ServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDataCopyWith<$Res> {
  factory $ServiceDataCopyWith(
          ServiceData value, $Res Function(ServiceData) then) =
      _$ServiceDataCopyWithImpl<$Res, ServiceData>;
  @useResult
  $Res call({String icon, String title});
}

/// @nodoc
class _$ServiceDataCopyWithImpl<$Res, $Val extends ServiceData>
    implements $ServiceDataCopyWith<$Res> {
  _$ServiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceDataImplCopyWith<$Res>
    implements $ServiceDataCopyWith<$Res> {
  factory _$$ServiceDataImplCopyWith(
          _$ServiceDataImpl value, $Res Function(_$ServiceDataImpl) then) =
      __$$ServiceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, String title});
}

/// @nodoc
class __$$ServiceDataImplCopyWithImpl<$Res>
    extends _$ServiceDataCopyWithImpl<$Res, _$ServiceDataImpl>
    implements _$$ServiceDataImplCopyWith<$Res> {
  __$$ServiceDataImplCopyWithImpl(
      _$ServiceDataImpl _value, $Res Function(_$ServiceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
  }) {
    return _then(_$ServiceDataImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDataImpl implements _ServiceData {
  const _$ServiceDataImpl({required this.icon, required this.title});

  factory _$ServiceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDataImplFromJson(json);

  @override
  final String icon;
  @override
  final String title;

  @override
  String toString() {
    return 'ServiceData(icon: $icon, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDataImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, title);

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDataImplCopyWith<_$ServiceDataImpl> get copyWith =>
      __$$ServiceDataImplCopyWithImpl<_$ServiceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDataImplToJson(
      this,
    );
  }
}

abstract class _ServiceData implements ServiceData {
  const factory _ServiceData(
      {required final String icon,
      required final String title}) = _$ServiceDataImpl;

  factory _ServiceData.fromJson(Map<String, dynamic> json) =
      _$ServiceDataImpl.fromJson;

  @override
  String get icon;
  @override
  String get title;

  /// Create a copy of ServiceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceDataImplCopyWith<_$ServiceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
