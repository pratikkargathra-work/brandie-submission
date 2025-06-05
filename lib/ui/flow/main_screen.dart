import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:oriflame/style/theme/typography/typography.dart';
import 'package:oriflame/ui/components/animations/on_tap_scale.dart';
import 'package:oriflame/ui/components/hover_notifier.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import 'package:oriflame/ui/navigation/routes.dart';
import '../../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> actions({void Function()? onTap}) {
      return [
        const SizedBox(height: 24),
        NavigationItem(
          icon: Assets.images.navigation.dashboard,
          title: context.l10n.dashboard_title,
          isSelected: widget.navigationShell.currentIndex == 0,
          onTap: () {
            onTap?.call();
            DashboardRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.sharedContent,
          title: context.l10n.shared_content_title,
          isSelected: widget.navigationShell.currentIndex == 1,
          onTap: () {
            onTap?.call();
            SharedContentRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.members,
          title: context.l10n.members_title,
          isSelected: widget.navigationShell.currentIndex == 2,
          onTap: () {
            onTap?.call();
            MembersRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.libraryAssets,
          title: context.l10n.library_assets_title,
          isSelected: widget.navigationShell.currentIndex == 3,
          onTap: () {
            onTap?.call();
            LibraryAssetsRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.educationHub,
          title: context.l10n.education_hub_title,
          isSelected: widget.navigationShell.currentIndex == 4,
          onTap: () {
            onTap?.call();
            EducationHubRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.campaigns,
          title: context.l10n.campaigns_title,
          isSelected: widget.navigationShell.currentIndex == 5,
          onTap: () {
            onTap?.call();
            CampaignsRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.communities,
          title: context.l10n.communities_title,
          isSelected: widget.navigationShell.currentIndex == 6,
          onTap: () {
            onTap?.call();
            CommunitiesRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.hashtags,
          title: context.l10n.hashtags_title,
          isSelected: widget.navigationShell.currentIndex == 7,
          onTap: () {
            onTap?.call();
            HashtagsRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.aiConsole,
          title: context.l10n.ai_console_title,
          isSelected: widget.navigationShell.currentIndex == 8,
          onTap: () {
            onTap?.call();
            AIConsoleRoute().go(context);
          },
        ),
        const Divider(height: 49),
        NavigationItem(
          icon: Assets.images.navigation.reviewAccounts,
          title: context.l10n.review_accounts_title,
          isSelected: widget.navigationShell.currentIndex == 9,
          onTap: () {
            onTap?.call();
            ReviewAccountsRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.pushNotifications,
          title: context.l10n.push_notifications_title,
          isSelected: widget.navigationShell.currentIndex == 10,
          onTap: () {
            onTap?.call();
            PushNotificationsRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.sharingControls,
          title: context.l10n.sharing_controls_title,
          isSelected: widget.navigationShell.currentIndex == 11,
          onTap: () {
            onTap?.call();
            SharingControlsRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.userManagement,
          title: context.l10n.user_management_title,
          isSelected: widget.navigationShell.currentIndex == 12,
          onTap: () {
            onTap?.call();
            UserManagementRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.appearance,
          title: context.l10n.appearance_title,
          isSelected: widget.navigationShell.currentIndex == 13,
          onTap: () {
            onTap?.call();
            AppearanceRoute().go(context);
          },
        ),
        NavigationItem(
          icon: Assets.images.navigation.faqsAndTutorials,
          title: context.l10n.faqs_and_tutorials_title,
          isSelected: widget.navigationShell.currentIndex == 14,
          onTap: () {
            onTap?.call();
            FAQsAndTutorialsRoute().go(context);
          },
        ),
        const SizedBox(height: 40),
        NavigationItem(
          icon: Assets.images.navigation.signOut,
          title: context.l10n.sign_out_title,
          color: context.colorScheme.statusRed,
          onTap: () {
            onTap?.call();
          },
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              context.l10n.powered_by_text,
              style: AppTextStyles.caption.copyWith(
                color: context.colorScheme.textDisabled,
              ),
            ),
            const SizedBox(width: 4),
            SvgPicture.asset(
              Assets.images.brandieLogo,
              colorFilter: ColorFilter.mode(
                context.colorScheme.textDisabled,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
      ];
    }

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 625) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          width: 150,
                          Assets.images.oriflameLogo,
                          colorFilter: ColorFilter.mode(
                            context.colorScheme.textPrimary,
                            BlendMode.srcIn,
                          ),
                        ),
                        const Spacer(),
                        OnTapScale(
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              useSafeArea: false,
                              context: context,
                              builder: (context) => Container(
                                color: context.colorScheme.surface,
                                child: SafeArea(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              width: 150,
                                              Assets.images.oriflameLogo,
                                              colorFilter: ColorFilter.mode(
                                                context.colorScheme.textPrimary,
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                            const Spacer(),
                                            OnTapScale(
                                              onTap: () =>
                                                  Navigator.pop(context),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                child: Icon(
                                                  Icons.close,
                                                  size: 24,
                                                  color: context
                                                      .colorScheme
                                                      .textDisabled,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ...actions(
                                                onTap: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.menu,
                              color: context.colorScheme.textDisabled,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: widget.navigationShell),
                ],
              );
            }
            return Center(
              child: Row(
                children: [
                  IntrinsicWidth(
                    child: Container(
                      color: context.colorScheme.containerLow,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30),
                            Center(
                              child: SvgPicture.asset(
                                width: 150,
                                Assets.images.oriflameLogo,
                                colorFilter: ColorFilter.mode(
                                  context.colorScheme.textPrimary,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            ...actions(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: widget.navigationShell),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  final String icon;
  final String title;
  final Color? color;
  final void Function()? onTap;
  final bool isSelected;

  const NavigationItem({
    super.key,
    required this.icon,
    required this.title,
    this.color,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      onHover: (hovered) => Container(
        width: double.infinity,
        color: isSelected
            ? (color ?? context.colorScheme.primary).withValues(alpha: 0.07)
            : hovered
            ? context.colorScheme.containerHigh
            : null,
        child: OnTapScale(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 30,
            ).copyWith(right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  icon,
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    color ??
                        (isSelected
                            ? context.colorScheme.primary
                            : context.colorScheme.textDisabled),
                    BlendMode.srcIn,
                  ),
                ),

                const SizedBox(width: 4),
                Text(
                  title,
                  style: AppTextStyles.bodyBold.copyWith(
                    color:
                        color ??
                        (isSelected
                            ? context.colorScheme.primary
                            : context.colorScheme.textSecondary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
