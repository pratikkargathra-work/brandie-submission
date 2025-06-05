import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oriflame/style/theme/typography/typography.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import '../../gen/assets.gen.dart';

class PageUnderDevelopmentScreen extends StatefulWidget {
  const PageUnderDevelopmentScreen({super.key});

  @override
  State<PageUnderDevelopmentScreen> createState() =>
      _PageUnderDevelopmentScreenState();
}

class _PageUnderDevelopmentScreenState
    extends State<PageUnderDevelopmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.navigation.faqsAndTutorials,
              width: 100,
              height: 100,
              colorFilter: ColorFilter.mode(
                context.colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              "Work in Progress",
              style: AppTextStyles.header3.copyWith(
                color: context.colorScheme.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "We’re still putting the final touches on this page. Check back soon for exciting updates!",
              textAlign: TextAlign.center,
              style: AppTextStyles.body2.copyWith(
                color: context.colorScheme.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
