// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$mainShellRoute];

RouteBase get $mainShellRoute => StatefulShellRouteData.$route(
  factory: $MainShellRouteExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/dashboard',

          factory: $DashboardRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/shared-content',

          factory: $SharedContentRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/members',

          factory: $MembersRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/library-assets',

          factory: $LibraryAssetsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/education-hub',

          factory: $EducationHubRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/campaigns',

          factory: $CampaignsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/communities',

          factory: $CommunitiesRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/hashtags',

          factory: $HashtagsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/ai-console',

          factory: $AIConsoleRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/review-accounts',

          factory: $ReviewAccountsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'archive',

              factory: $ArchiveAccountsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/push-notifications',

          factory: $PushNotificationsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/sharing-controls',

          factory: $SharingControlsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/user-management',

          factory: $UserManagementRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/appearance',

          factory: $AppearanceRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/faqs-and-tutorials',

          factory: $FAQsAndTutorialsRouteExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $MainShellRouteExtension on MainShellRoute {
  static MainShellRoute _fromState(GoRouterState state) =>
      const MainShellRoute();
}

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) => DashboardRoute();

  String get location => GoRouteData.$location('/dashboard');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SharedContentRouteExtension on SharedContentRoute {
  static SharedContentRoute _fromState(GoRouterState state) =>
      SharedContentRoute();

  String get location => GoRouteData.$location('/shared-content');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MembersRouteExtension on MembersRoute {
  static MembersRoute _fromState(GoRouterState state) => MembersRoute();

  String get location => GoRouteData.$location('/members');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LibraryAssetsRouteExtension on LibraryAssetsRoute {
  static LibraryAssetsRoute _fromState(GoRouterState state) =>
      LibraryAssetsRoute();

  String get location => GoRouteData.$location('/library-assets');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EducationHubRouteExtension on EducationHubRoute {
  static EducationHubRoute _fromState(GoRouterState state) =>
      EducationHubRoute();

  String get location => GoRouteData.$location('/education-hub');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CampaignsRouteExtension on CampaignsRoute {
  static CampaignsRoute _fromState(GoRouterState state) => CampaignsRoute();

  String get location => GoRouteData.$location('/campaigns');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CommunitiesRouteExtension on CommunitiesRoute {
  static CommunitiesRoute _fromState(GoRouterState state) => CommunitiesRoute();

  String get location => GoRouteData.$location('/communities');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HashtagsRouteExtension on HashtagsRoute {
  static HashtagsRoute _fromState(GoRouterState state) => HashtagsRoute();

  String get location => GoRouteData.$location('/hashtags');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AIConsoleRouteExtension on AIConsoleRoute {
  static AIConsoleRoute _fromState(GoRouterState state) => AIConsoleRoute();

  String get location => GoRouteData.$location('/ai-console');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ReviewAccountsRouteExtension on ReviewAccountsRoute {
  static ReviewAccountsRoute _fromState(GoRouterState state) =>
      ReviewAccountsRoute();

  String get location => GoRouteData.$location('/review-accounts');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ArchiveAccountsRouteExtension on ArchiveAccountsRoute {
  static ArchiveAccountsRoute _fromState(GoRouterState state) =>
      ArchiveAccountsRoute();

  String get location => GoRouteData.$location('/review-accounts/archive');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PushNotificationsRouteExtension on PushNotificationsRoute {
  static PushNotificationsRoute _fromState(GoRouterState state) =>
      PushNotificationsRoute();

  String get location => GoRouteData.$location('/push-notifications');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SharingControlsRouteExtension on SharingControlsRoute {
  static SharingControlsRoute _fromState(GoRouterState state) =>
      SharingControlsRoute();

  String get location => GoRouteData.$location('/sharing-controls');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserManagementRouteExtension on UserManagementRoute {
  static UserManagementRoute _fromState(GoRouterState state) =>
      UserManagementRoute();

  String get location => GoRouteData.$location('/user-management');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AppearanceRouteExtension on AppearanceRoute {
  static AppearanceRoute _fromState(GoRouterState state) => AppearanceRoute();

  String get location => GoRouteData.$location('/appearance');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FAQsAndTutorialsRouteExtension on FAQsAndTutorialsRoute {
  static FAQsAndTutorialsRoute _fromState(GoRouterState state) =>
      FAQsAndTutorialsRoute();

  String get location => GoRouteData.$location('/faqs-and-tutorials');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
