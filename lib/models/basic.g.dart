// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicImpl _$$BasicImplFromJson(Map<String, dynamic> json) => _$BasicImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      age: (json['age'] as num).toInt(),
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      resume: json['resume'] as String,
    );

Map<String, dynamic> _$$BasicImplToJson(_$BasicImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'photos': instance.photos,
      'resume': instance.resume,
    };
