import 'package:flutter/cupertino.dart';
import 'package:oriflame/data/models/account/account.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../style/theme/typography/typography.dart';

class AccountSocialButton extends StatelessWidget {
  final Account account;

  const AccountSocialButton({super.key,required this.account, });

  @override
  Widget build(BuildContext context) {
    final images = {
      SocialPlatform.instagram: Assets.images.social.instagram,
      SocialPlatform.facebook: Assets.images.social.facebook,
      SocialPlatform.whatsapp: Assets.images.social.whatsapp,
      SocialPlatform.tiktok: Assets.images.social.tiktok,
    };

    final name = {
      SocialPlatform.instagram: context.l10n.common_instagram,
      SocialPlatform.facebook: context.l10n.common_facebook,
      SocialPlatform.whatsapp: context.l10n.common_whatsapp,
      SocialPlatform.tiktok: context.l10n.common_tiktok,
    };

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: context.colorScheme.containerMedium,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            images[account.socialPlatform]!.path,
            height: 16,
            width: 16,
          ),
          const SizedBox(width: 8),
          Text(
            name[account.socialPlatform]!,
            style: AppTextStyles.body2.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.textDisabled,
            ),
          ),
        ],
      ),
    );
  }
}
