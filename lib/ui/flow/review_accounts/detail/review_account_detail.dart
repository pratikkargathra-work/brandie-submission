import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:oriflame/ui/components/animations/on_tap_scale.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import 'package:oriflame/ui/flow/review_accounts/components/account_social_button.dart';
import 'package:oriflame/ui/flow/review_accounts/detail/review_account_detail_state_notifier.dart';
import '../../../../data/models/account/account.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../style/theme/typography/typography.dart';
import '../components/account_state.dart';

class ReviewAccountDetailDialog extends ConsumerStatefulWidget {
  final List<Account> accounts;
  final int index;

  const ReviewAccountDetailDialog({
    super.key,
    required this.accounts,
    required this.index,
  });

  @override
  ConsumerState<ReviewAccountDetailDialog> createState() =>
      _ReviewAccountDetailDialogState();
}

class _ReviewAccountDetailDialogState
    extends ConsumerState<ReviewAccountDetailDialog> {
  late AutoDisposeStateNotifierProvider<
    ReviewAccountDetailStateNotifier,
    ReviewAccountDetailState
  >
  _provider;
  late ReviewAccountDetailStateNotifier _notifier;

  @override
  void initState() {
    _provider = reviewAccountsStateNotifierProvider((
      accounts: widget.accounts,
      current: widget.index,
    ));
    _notifier = ref.read(_provider.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(_provider);

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: previousButton(),
                  ),
                  Expanded(
                    child: PageView(
                      onPageChanged: _notifier.onPageChanged,
                      controller: state.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: state.accounts
                          .map(
                            (account) => Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: AccountDetailItem(
                                  currentAccount: account,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: nextButton(),
                  ),
                ],
              ),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: _notifier.onPageChanged,
                    controller: state.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: state.accounts
                        .map(
                          (account) => Center(
                            child: AccountDetailItem(currentAccount: account),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [previousButton(), nextButton()],
                ),
                const SizedBox(height: 16),
              ],
            );
          }
        },
      ),
    );
  }

  Widget previousButton() {
    return OnTapScale(
      onTap: _notifier.navigatePrevious,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: context.colorScheme.strokeLight),
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          color: context.colorScheme.onPrimary,
          size: 24,
        ),
      ),
    );
  }

  Widget nextButton() {
    return OnTapScale(
      onTap: _notifier.navigateNext,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: context.colorScheme.strokeLight),
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: context.colorScheme.onPrimary,
          size: 24,
        ),
      ),
    );
  }
}

class AccountDetailItem extends StatelessWidget {
  final Account currentAccount;

  const AccountDetailItem({super.key, required this.currentAccount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: context.colorScheme.strokeDark,
                  width: 2,
                ),
                image: DecorationImage(
                  image: NetworkImage(currentAccount.avatar),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              currentAccount.name,
              style: AppTextStyles.header1.copyWith(
                color: context.colorScheme.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 16,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://flagcdn.com/48x36/gb.png",
                      ),
                      radius: 8,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "Birmingham, UK",
                      style: AppTextStyles.body2.copyWith(
                        color: context.colorScheme.textSecondary,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.male,
                      color: context.colorScheme.textSecondary,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "42",
                      style: AppTextStyles.body2.copyWith(
                        color: context.colorScheme.textSecondary,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      Assets.images.brandLogo.path,
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${context.l10n.common_id}: ${currentAccount.id}",
                      style: AppTextStyles.body2.copyWith(
                        color: context.colorScheme.textSecondary,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      {
                        SocialPlatform.instagram:
                            Assets.images.social.instagram,
                        SocialPlatform.facebook: Assets.images.social.facebook,
                        SocialPlatform.whatsapp: Assets.images.social.whatsapp,
                        SocialPlatform.tiktok: Assets.images.social.tiktok,
                      }[currentAccount.socialPlatform]!.path,
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      (currentAccount.socialPlatform == SocialPlatform.whatsapp
                              ? ""
                              : "@") +
                          currentAccount.profile_link.split("/").last,
                      style: AppTextStyles.body2.copyWith(
                        color: context.colorScheme.textSecondary,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.mail_outline_rounded,
                      size: 16,
                      color: context.colorScheme.textSecondary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      currentAccount.email,
                      style: AppTextStyles.body2.copyWith(
                        color: context.colorScheme.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Divider(height: 1, color: context.colorScheme.strokeLight),
            const SizedBox(height: 16),
            Center(
              child: Wrap(
                spacing: 16,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 16,
                        color: context.colorScheme.textSecondary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "${context.l10n.joined_text}: ${DateFormat("dd MMMM yyyy").format(currentAccount.date_joined)}",
                        style: AppTextStyles.body2.copyWith(
                          color: context.colorScheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  if (currentAccount.last_seen != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: context.colorScheme.textSecondary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "${context.l10n.last_seen_text}: ${DateFormat("dd MMMM yyyy").format(currentAccount.last_seen!)}",
                          style: AppTextStyles.body2.copyWith(
                            color: context.colorScheme.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  if (currentAccount.last_post != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: context.colorScheme.textSecondary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "${context.l10n.last_post_text}: ${DateFormat("dd MMMM yyyy").format(currentAccount.last_post!)}",
                          style: AppTextStyles.body2.copyWith(
                            color: context.colorScheme.textSecondary,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: context.colorScheme.primary.withValues(alpha: 0.07),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    context.l10n.trying_to_connect_text,
                    style: AppTextStyles.body2.copyWith(
                      color: context.colorScheme.textDisabled,
                    ),
                  ),
                  const SizedBox(height: 4),
                  AccountSocialButton(account: currentAccount),
                  const SizedBox(height: 8),
                  Text(
                    (currentAccount.socialPlatform == SocialPlatform.whatsapp
                            ? ""
                            : "@") +
                        currentAccount.profile_link.split("/").last,
                    style: AppTextStyles.header3.copyWith(
                      color: context.colorScheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (currentAccount.socialPlatform != SocialPlatform.whatsapp)
                    Container(
                      constraints: const BoxConstraints(maxWidth: 320),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: context.colorScheme.containerLow,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: _states(context, currentAccount),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (currentAccount.socialPlatform != SocialPlatform.whatsapp)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.images.icons.externalLink,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "${context.l10n.common_go_to} ${{SocialPlatform.instagram: context.l10n.common_instagram, SocialPlatform.facebook: context.l10n.common_facebook, SocialPlatform.tiktok: context.l10n.common_tiktok}[currentAccount.socialPlatform]!} ${context.l10n.common_profile}",
                    style: AppTextStyles.body.copyWith(
                      color: context.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnTapScale(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: context.colorScheme.statusRed,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.close,
                          color: context.colorScheme.onPrimary,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          context.l10n.common_decline,
                          style: AppTextStyles.body2.copyWith(
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                OnTapScale(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_rounded,
                          color: context.colorScheme.onPrimary,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          context.l10n.common_approve,
                          style: AppTextStyles.body2.copyWith(
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _states(BuildContext context, Account account) {
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
