// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oriflame/data/core/converters/time_stamp_converter.dart';

part 'account.freezed.dart';

part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const Account._();

  const factory Account({
    required String id,
    required String name,
    required String email,
    required String avatar,
    @Default(AccountConnectionStatus.pending) AccountConnectionStatus status,
    required String profile_link,
    int? followers,
    int? following,
    int? posts,
    int? likes,
    int? friends,
    @TimeStampJsonConverter() required DateTime date_joined,
    @TimeStampJsonConverter() DateTime? last_seen,
    @TimeStampJsonConverter() DateTime? last_post,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  SocialPlatform get socialPlatform {
    if (profile_link.contains('instagram')) {
      return SocialPlatform.instagram;
    } else if (profile_link.contains('facebook')) {
      return SocialPlatform.facebook;
    } else if (profile_link.contains('wa.me')) {
      return SocialPlatform.whatsapp;
    } else if (profile_link.contains('tiktok')) {
      return SocialPlatform.tiktok;
    } else {
      return SocialPlatform.instagram;
    }
  }
}

@JsonEnum(valueField: "value")
enum AccountConnectionStatus {
  pending('pending'),
  approved('approved'),
  declined('declined');

  final String value;

  const AccountConnectionStatus(this.value);
}

@JsonEnum(valueField: "value")
enum SocialPlatform {
  instagram('instagram'),
  facebook('facebook'),
  whatsapp('whatsapp'),
  tiktok('tiktok');

  final String value;

  const SocialPlatform(this.value);
}
