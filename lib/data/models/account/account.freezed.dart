// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Account {

 String get id; String get name; String get email; String get avatar; AccountConnectionStatus get status; String get profile_link; int? get followers; int? get following; int? get posts; int? get likes; int? get friends;@TimeStampJsonConverter() DateTime get date_joined;@TimeStampJsonConverter() DateTime? get last_seen;@TimeStampJsonConverter() DateTime? get last_post;
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(this as Account, _$identity);

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Account&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.status, status) || other.status == status)&&(identical(other.profile_link, profile_link) || other.profile_link == profile_link)&&(identical(other.followers, followers) || other.followers == followers)&&(identical(other.following, following) || other.following == following)&&(identical(other.posts, posts) || other.posts == posts)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.friends, friends) || other.friends == friends)&&(identical(other.date_joined, date_joined) || other.date_joined == date_joined)&&(identical(other.last_seen, last_seen) || other.last_seen == last_seen)&&(identical(other.last_post, last_post) || other.last_post == last_post));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,avatar,status,profile_link,followers,following,posts,likes,friends,date_joined,last_seen,last_post);

@override
String toString() {
  return 'Account(id: $id, name: $name, email: $email, avatar: $avatar, status: $status, profile_link: $profile_link, followers: $followers, following: $following, posts: $posts, likes: $likes, friends: $friends, date_joined: $date_joined, last_seen: $last_seen, last_post: $last_post)';
}


}

/// @nodoc
abstract mixin class $AccountCopyWith<$Res>  {
  factory $AccountCopyWith(Account value, $Res Function(Account) _then) = _$AccountCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String avatar, AccountConnectionStatus status, String profile_link, int? followers, int? following, int? posts, int? likes, int? friends,@TimeStampJsonConverter() DateTime date_joined,@TimeStampJsonConverter() DateTime? last_seen,@TimeStampJsonConverter() DateTime? last_post
});




}
/// @nodoc
class _$AccountCopyWithImpl<$Res>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._self, this._then);

  final Account _self;
  final $Res Function(Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? avatar = null,Object? status = null,Object? profile_link = null,Object? followers = freezed,Object? following = freezed,Object? posts = freezed,Object? likes = freezed,Object? friends = freezed,Object? date_joined = null,Object? last_seen = freezed,Object? last_post = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AccountConnectionStatus,profile_link: null == profile_link ? _self.profile_link : profile_link // ignore: cast_nullable_to_non_nullable
as String,followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int?,following: freezed == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as int?,posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as int?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,friends: freezed == friends ? _self.friends : friends // ignore: cast_nullable_to_non_nullable
as int?,date_joined: null == date_joined ? _self.date_joined : date_joined // ignore: cast_nullable_to_non_nullable
as DateTime,last_seen: freezed == last_seen ? _self.last_seen : last_seen // ignore: cast_nullable_to_non_nullable
as DateTime?,last_post: freezed == last_post ? _self.last_post : last_post // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Account extends Account {
  const _Account({required this.id, required this.name, required this.email, required this.avatar, this.status = AccountConnectionStatus.pending, required this.profile_link, this.followers, this.following, this.posts, this.likes, this.friends, @TimeStampJsonConverter() required this.date_joined, @TimeStampJsonConverter() this.last_seen, @TimeStampJsonConverter() this.last_post}): super._();
  factory _Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;
@override final  String avatar;
@override@JsonKey() final  AccountConnectionStatus status;
@override final  String profile_link;
@override final  int? followers;
@override final  int? following;
@override final  int? posts;
@override final  int? likes;
@override final  int? friends;
@override@TimeStampJsonConverter() final  DateTime date_joined;
@override@TimeStampJsonConverter() final  DateTime? last_seen;
@override@TimeStampJsonConverter() final  DateTime? last_post;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCopyWith<_Account> get copyWith => __$AccountCopyWithImpl<_Account>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Account&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.status, status) || other.status == status)&&(identical(other.profile_link, profile_link) || other.profile_link == profile_link)&&(identical(other.followers, followers) || other.followers == followers)&&(identical(other.following, following) || other.following == following)&&(identical(other.posts, posts) || other.posts == posts)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.friends, friends) || other.friends == friends)&&(identical(other.date_joined, date_joined) || other.date_joined == date_joined)&&(identical(other.last_seen, last_seen) || other.last_seen == last_seen)&&(identical(other.last_post, last_post) || other.last_post == last_post));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,avatar,status,profile_link,followers,following,posts,likes,friends,date_joined,last_seen,last_post);

@override
String toString() {
  return 'Account(id: $id, name: $name, email: $email, avatar: $avatar, status: $status, profile_link: $profile_link, followers: $followers, following: $following, posts: $posts, likes: $likes, friends: $friends, date_joined: $date_joined, last_seen: $last_seen, last_post: $last_post)';
}


}

/// @nodoc
abstract mixin class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) _then) = __$AccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String avatar, AccountConnectionStatus status, String profile_link, int? followers, int? following, int? posts, int? likes, int? friends,@TimeStampJsonConverter() DateTime date_joined,@TimeStampJsonConverter() DateTime? last_seen,@TimeStampJsonConverter() DateTime? last_post
});




}
/// @nodoc
class __$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(this._self, this._then);

  final _Account _self;
  final $Res Function(_Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? avatar = null,Object? status = null,Object? profile_link = null,Object? followers = freezed,Object? following = freezed,Object? posts = freezed,Object? likes = freezed,Object? friends = freezed,Object? date_joined = null,Object? last_seen = freezed,Object? last_post = freezed,}) {
  return _then(_Account(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AccountConnectionStatus,profile_link: null == profile_link ? _self.profile_link : profile_link // ignore: cast_nullable_to_non_nullable
as String,followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int?,following: freezed == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as int?,posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as int?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,friends: freezed == friends ? _self.friends : friends // ignore: cast_nullable_to_non_nullable
as int?,date_joined: null == date_joined ? _self.date_joined : date_joined // ignore: cast_nullable_to_non_nullable
as DateTime,last_seen: freezed == last_seen ? _self.last_seen : last_seen // ignore: cast_nullable_to_non_nullable
as DateTime?,last_post: freezed == last_post ? _self.last_post : last_post // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
