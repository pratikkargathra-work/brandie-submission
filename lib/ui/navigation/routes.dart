import 'package:flutter/cupertino.dart'
    show BuildContext, Widget, NavigatorState, GlobalKey;
import 'package:go_router/go_router.dart';
import 'package:oriflame/ui/components/page_under_development_screen.dart';
import 'package:oriflame/ui/flow/review_accounts/archive/archive_accounts_screen.dart';
import '../flow/main_screen.dart';
import '../flow/review_accounts/review_accounts_screen.dart';

part 'routes.g.dart';

class RoutePaths {
  static const dashboard = '/dashboard';
  static const sharedContent = '/shared-content';
  static const members = '/members';
  static const libraryAssets = '/library-assets';
  static const educationHub = '/education-hub';
  static const campaigns = '/campaigns';
  static const communities = '/communities';
  static const hashtags = '/hashtags';
  static const aiConsole = '/ai-console';
  static const reviewAccounts = '/review-accounts';
  static const pushNotifications = '/push-notifications';
  static const sharingControls = '/sharing-controls';
  static const userManagement = '/user-management';
  static const appearance = '/appearance';
  static const faqsAndTutorials = '/faqs-and-tutorials';

  static const archive = 'archive';
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedStatefulShellRoute<MainShellRoute>(
  branches: [
    TypedStatefulShellBranch<DashboardShellBranch>(
      routes: [TypedGoRoute<DashboardRoute>(path: RoutePaths.dashboard)],
    ),
    TypedStatefulShellBranch<SharedContentShellBranch>(
      routes: [
        TypedGoRoute<SharedContentRoute>(path: RoutePaths.sharedContent),
      ],
    ),
    TypedStatefulShellBranch<MembersShellBranch>(
      routes: [TypedGoRoute<MembersRoute>(path: RoutePaths.members)],
    ),
    TypedStatefulShellBranch<LibraryAssetsShellBranch>(
      routes: [
        TypedGoRoute<LibraryAssetsRoute>(path: RoutePaths.libraryAssets),
      ],
    ),
    TypedStatefulShellBranch<EducationHubShellBranch>(
      routes: [TypedGoRoute<EducationHubRoute>(path: RoutePaths.educationHub)],
    ),
    TypedStatefulShellBranch<CampaignsShellBranch>(
      routes: [TypedGoRoute<CampaignsRoute>(path: RoutePaths.campaigns)],
    ),
    TypedStatefulShellBranch<CommunitiesShellBranch>(
      routes: [TypedGoRoute<CommunitiesRoute>(path: RoutePaths.communities)],
    ),
    TypedStatefulShellBranch<HashtagsShellBranch>(
      routes: [TypedGoRoute<HashtagsRoute>(path: RoutePaths.hashtags)],
    ),
    TypedStatefulShellBranch<AIConsoleShellBranch>(
      routes: [TypedGoRoute<AIConsoleRoute>(path: RoutePaths.aiConsole)],
    ),
    TypedStatefulShellBranch<ReviewAccountsShellBranch>(
      routes: [
        TypedGoRoute<ReviewAccountsRoute>(
          path: RoutePaths.reviewAccounts,
          routes: [
            TypedGoRoute<ArchiveAccountsRoute>(path: RoutePaths.archive),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<PushNotificationsShellBranch>(
      routes: [
        TypedGoRoute<PushNotificationsRoute>(
          path: RoutePaths.pushNotifications,
        ),
      ],
    ),
    TypedStatefulShellBranch<SharingControlsShellBranch>(
      routes: [
        TypedGoRoute<SharingControlsRoute>(path: RoutePaths.sharingControls),
      ],
    ),
    TypedStatefulShellBranch<UserManagementShellBranch>(
      routes: [
        TypedGoRoute<UserManagementRoute>(path: RoutePaths.userManagement),
      ],
    ),
    TypedStatefulShellBranch<AppearanceShellBranch>(
      routes: [TypedGoRoute<AppearanceRoute>(path: RoutePaths.appearance)],
    ),
    TypedStatefulShellBranch<FAQsAndTutorialsShellBranch>(
      routes: [
        TypedGoRoute<FAQsAndTutorialsRoute>(path: RoutePaths.faqsAndTutorials),
      ],
    ),
  ],
)
class MainShellRoute extends StatefulShellRouteData {
  const MainShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) => MainScreen(navigationShell: navigationShell);
}

class DashboardShellBranch extends StatefulShellBranchData {}

class SharedContentShellBranch extends StatefulShellBranchData {}

class MembersShellBranch extends StatefulShellBranchData {}

class LibraryAssetsShellBranch extends StatefulShellBranchData {}

class EducationHubShellBranch extends StatefulShellBranchData {}

class CampaignsShellBranch extends StatefulShellBranchData {}

class CommunitiesShellBranch extends StatefulShellBranchData {}

class HashtagsShellBranch extends StatefulShellBranchData {}

class AIConsoleShellBranch extends StatefulShellBranchData {}

class ReviewAccountsShellBranch extends StatefulShellBranchData {}

class PushNotificationsShellBranch extends StatefulShellBranchData {}

class SharingControlsShellBranch extends StatefulShellBranchData {}

class UserManagementShellBranch extends StatefulShellBranchData {}

class AppearanceShellBranch extends StatefulShellBranchData {}

class FAQsAndTutorialsShellBranch extends StatefulShellBranchData {}

class DashboardRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class SharedContentRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class MembersRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class LibraryAssetsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class EducationHubRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class CampaignsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class CommunitiesRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class HashtagsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class AIConsoleRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class ReviewAccountsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ReviewAccountsScreen();
}

class ArchiveAccountsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ArchiveAccountsScreen();
}

class PushNotificationsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class SharingControlsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class UserManagementRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class AppearanceRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}

class FAQsAndTutorialsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PageUnderDevelopmentScreen();
}
