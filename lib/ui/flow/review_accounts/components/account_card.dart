import 'package:flutter/material.dart';
import 'package:oriflame/ui/components/animations/fade_in_switcher.dart';
import 'package:oriflame/ui/components/animations/on_tap_scale.dart';
import 'package:oriflame/ui/components/hover_notifier.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import 'package:oriflame/ui/flow/review_accounts/components/account_social_button.dart';
import '../../../../data/models/account/account.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../style/theme/typography/typography.dart';
import 'account_state.dart';

class AccountCard extends StatelessWidget {
  final Account account;
  final void Function()? onTap;
  final void Function()? onDecline;
  final void Function()? onApprove;

  const AccountCard({
    super.key,
    required this.account,
    this.onTap,
    this.onDecline,
    this.onApprove,
  });

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      onHover: (hovered) => OnTapScale(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(16),
          constraints: BoxConstraints(maxWidth: 320),
          decoration: BoxDecoration(
            border: Border.all(color: context.colorScheme.strokeLight),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              _profileInfo(context),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    _socialMediaInfo(context),
                    const Spacer(),
                    _declineButton(context, hovered),
                    const SizedBox(width: 16),
                    _approveButton(context, hovered),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16).copyWith(top: 0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: context.colorScheme.containerLow,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: _states(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: context.colorScheme.strokeDark,
                width: 2,
              ),
              image: DecorationImage(
                image: NetworkImage(account.avatar),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.name,
                  style: AppTextStyles.bodyBold.copyWith(
                    color: context.colorScheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Image.asset(
                      Assets.images.brandLogo.path,
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "${context.l10n.common_id}: ${account.id}",
                      style: AppTextStyles.caption.copyWith(
                        color: context.colorScheme.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialMediaInfo(BuildContext context) {
    return Column(
      children: [
        AccountSocialButton(account:account),
        const SizedBox(height: 8),
        Text(
          (account.socialPlatform == SocialPlatform.whatsapp ? "" : "@") +
              account.profile_link.split("/").last,
          style: AppTextStyles.bodyBold.copyWith(
            color: context.colorScheme.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _declineButton(BuildContext context, bool hovered) {
    return FadeInSwitcher(
      child: !hovered || onDecline == null
          ? const SizedBox.shrink()
          : OnTapScale(
              onTap: onDecline,
              child: Container(
                width: 38,
                height: 38,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context.colorScheme.statusRed,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.close,
                  color: context.colorScheme.onPrimary,
                  size: 20,
                ),
              ),
            ),
    );
  }

  Widget _approveButton(BuildContext context, bool hovered) {
    return FadeInSwitcher(
      child: !hovered || onApprove == null
          ? const SizedBox.shrink()
          : OnTapScale(
              onTap: onApprove,
              child: Container(
                height: 38,
                width: 38,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.check,
                  color: context.colorScheme.onPrimary,
                  size: 20,
                ),
              ),
            ),
    );
  }

  Widget _states(BuildContext context) {
    if (account.socialPlatform == SocialPlatform.whatsapp) {
      return Row(
        children: [
          AccountState(
            title: context.l10n.common_whatsapp_number,
            value: account.profile_link.split("/").last,
          ),
        ],
      );
    } else if (account.socialPlatform == SocialPlatform.facebook) {
      return Row(
        children: [
          AccountState(
            title: context.l10n.common_friends,
            value: account.friends.toString(),
          ),
        ],
      );
    } else {
      return IntrinsicHeight(
        child: Row(
          children: [
            AccountState(
              title: context.l10n.common_followers,
              value: account.followers.toString(),
            ),
            const VerticalDivider(width: 1),
            AccountState(
              title: context.l10n.common_following,
              value: account.following.toString(),
            ),
            const VerticalDivider(width: 1),
            if (account.socialPlatform == SocialPlatform.instagram)
              AccountState(
                title: context.l10n.common_posts,
                value: account.posts.toString(),
              ),
            if (account.socialPlatform == SocialPlatform.tiktok)
              AccountState(
                title: context.l10n.common_likes,
                value: account.likes.toString(),
              ),
          ],
        ),
      );
    }
  }
}


