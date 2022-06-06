// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
      json['name'] as String,
      json['email'] as String,
      $enumDecode(_$GenderEnumMap, json['gender']),
      DateTime.parse(json['dob'] as String),
      json['phone'] as String,
      DateTime.parse(json['registered'] as String),
      $enumDecode(_$UserStatusEnumMap, json['status']),
      Picture.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'name': instance.name,
      'email': instance.email,
      'dob': instance.dob.toIso8601String(),
      'registered': instance.registered.toIso8601String(),
      'phone': instance.phone,
      'status': _$UserStatusEnumMap[instance.status],
      'picture': instance.picture,
    };

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

Chats _$ChatsFromJson(Map<String, dynamic> json) => Chats(
      (json['results'] as List<dynamic>)
          .map((e) => Chat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatsToJson(Chats instance) => <String, dynamic>{
      'results': instance.results,
    };
