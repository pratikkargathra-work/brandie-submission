import 'package:flutter/cupertino.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';

import '../../../../style/theme/typography/typography.dart';

class AccountState extends StatelessWidget {
  final String title;
  final String value;

  const AccountState({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: AppTextStyles.captionBold.copyWith(
              color: context.colorScheme.textPrimary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: AppTextStyles.caption.copyWith(
              color: context.colorScheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}