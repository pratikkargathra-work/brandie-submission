// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

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
    required DateTime date_joined,
    DateTime? last_seen,
    DateTime? last_post,
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

@JsonEnum()
enum AccountConnectionStatus {
  pending('pending'),
  approved('approved'),
  declined('declined');

  final String value;

  const AccountConnectionStatus(this.value);
}

@JsonEnum()
enum SocialPlatform {
  instagram('instagram'),
  facebook('facebook'),
  whatsapp('whatsapp'),
  tiktok('tiktok');

  final String value;

  const SocialPlatform(this.value);
}
