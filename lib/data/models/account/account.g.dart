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
  date_joined: DateTime.parse(json['date_joined'] as String),
  last_seen: json['last_seen'] == null
      ? null
      : DateTime.parse(json['last_seen'] as String),
  last_post: json['last_post'] == null
      ? null
      : DateTime.parse(json['last_post'] as String),
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
  'date_joined': instance.date_joined.toIso8601String(),
  'last_seen': instance.last_seen?.toIso8601String(),
  'last_post': instance.last_post?.toIso8601String(),
};

const _$AccountConnectionStatusEnumMap = {
  AccountConnectionStatus.pending: 'pending',
  AccountConnectionStatus.approved: 'approved',
  AccountConnectionStatus.declined: 'declined',
};
