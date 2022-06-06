// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['name'] as String?,
      json['email'] as String?,
      $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      json['phone'] as String?,
      json['registered'] == null
          ? null
          : DateTime.parse(json['registered'] as String),
      $enumDecodeNullable(_$UserStatusEnumMap, json['status']),
    );

// Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
//       'gender': _$GenderEnumMap[instance.gender],
//       'name': instance.name,
//       'email': instance.email,
//       'dob': instance.dob?.toIso8601String(),
//       'registered': instance.registered?.toIso8601String(),
//       'phone': instance.phone,
//       'status': _$UserStatusEnumMap[instance.status],
//     };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$UserStatusEnumMap = {
  UserStatus.offline: 'offline',
  UserStatus.online: 'online',
  UserStatus.private: 'private',
};

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      (json['results'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

// Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
//       'results': instance.results,
//     };
