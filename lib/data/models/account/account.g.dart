// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  avatar: json['avatar'] as String,
  status:
      $enumDecodeNullable(_$AccountConnectionStatusEnumMap, json['status']) ??
      AccountConnectionStatus.pending,
  profile_link: json['profile_link'] as String,
  followers: (json['followers'] as num?)?.toInt(),
  following: (json['following'] as num?)?.toInt(),
  posts: (json['posts'] as num?)?.toInt(),
  likes: (json['likes'] as num?)?.toInt(),
  friends: (json['friends'] as num?)?.toInt(),
  date_joined: const TimeStampJsonConverter().fromJson(
    json['date_joined'] as Object,
  ),
  last_seen: _$JsonConverterFromJson<Object, DateTime>(
    json['last_seen'],
    const TimeStampJsonConverter().fromJson,
  ),
  last_post: _$JsonConverterFromJson<Object, DateTime>(
    json['last_post'],
    const TimeStampJsonConverter().fromJson,
  ),
);

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'avatar': instance.avatar,
  'status': _$AccountConnectionStatusEnumMap[instance.status]!,
  'profile_link': instance.profile_link,
  'followers': instance.followers,
  'following': instance.following,
  'posts': instance.posts,
  'likes': instance.likes,
  'friends': instance.friends,
  'date_joined': const TimeStampJsonConverter().toJson(instance.date_joined),
  'last_seen': _$JsonConverterToJson<Object, DateTime>(
    instance.last_seen,
    const TimeStampJsonConverter().toJson,
  ),
  'last_post': _$JsonConverterToJson<Object, DateTime>(
    instance.last_post,
    const TimeStampJsonConverter().toJson,
  ),
};

const _$AccountConnectionStatusEnumMap = {
  AccountConnectionStatus.pending: 'pending',
  AccountConnectionStatus.approved: 'approved',
  AccountConnectionStatus.declined: 'declined',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
