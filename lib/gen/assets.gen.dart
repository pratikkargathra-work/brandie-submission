/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/brand_logo.png
  AssetGenImage get brandLogo =>
      const AssetGenImage('assets/images/brand_logo.png');

  /// File path: assets/images/brandie_logo.svg
  String get brandieLogo => 'assets/images/brandie_logo.svg';

  /// Directory path: assets/images/icons
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();

  /// Directory path: assets/images/navigation
  $AssetsImagesNavigationGen get navigation =>
      const $AssetsImagesNavigationGen();

  /// File path: assets/images/oriflame_logo.svg
  String get oriflameLogo => 'assets/images/oriflame_logo.svg';

  /// Directory path: assets/images/social
  $AssetsImagesSocialGen get social => const $AssetsImagesSocialGen();

  /// List of all assets
  List<dynamic> get values => [brandLogo, brandieLogo, oriflameLogo];
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/external_link.svg
  String get externalLink => 'assets/images/icons/external_link.svg';

  /// File path: assets/images/icons/search.svg
  String get search => 'assets/images/icons/search.svg';

  /// List of all assets
  List<String> get values => [externalLink, search];
}

class $AssetsImagesNavigationGen {
  const $AssetsImagesNavigationGen();

  /// File path: assets/images/navigation/ai_console.svg
  String get aiConsole => 'assets/images/navigation/ai_console.svg';

  /// File path: assets/images/navigation/appearance.svg
  String get appearance => 'assets/images/navigation/appearance.svg';

  /// File path: assets/images/navigation/campaigns.svg
  String get campaigns => 'assets/images/navigation/campaigns.svg';

  /// File path: assets/images/navigation/communities.svg
  String get communities => 'assets/images/navigation/communities.svg';

  /// File path: assets/images/navigation/dashboard.svg
  String get dashboard => 'assets/images/navigation/dashboard.svg';

  /// File path: assets/images/navigation/education_hub.svg
  String get educationHub => 'assets/images/navigation/education_hub.svg';

  /// File path: assets/images/navigation/faqs_and_tutorials.svg
  String get faqsAndTutorials =>
      'assets/images/navigation/faqs_and_tutorials.svg';

  /// File path: assets/images/navigation/hashtags.svg
  String get hashtags => 'assets/images/navigation/hashtags.svg';

  /// File path: assets/images/navigation/library_assets.svg
  String get libraryAssets => 'assets/images/navigation/library_assets.svg';

  /// File path: assets/images/navigation/members.svg
  String get members => 'assets/images/navigation/members.svg';

  /// File path: assets/images/navigation/push_notifications.svg
  String get pushNotifications =>
      'assets/images/navigation/push_notifications.svg';

  /// File path: assets/images/navigation/review_accounts.svg
  String get reviewAccounts => 'assets/images/navigation/review_accounts.svg';

  /// File path: assets/images/navigation/shared_content.svg
  String get sharedContent => 'assets/images/navigation/shared_content.svg';

  /// File path: assets/images/navigation/sharing_controls.svg
  String get sharingControls => 'assets/images/navigation/sharing_controls.svg';

  /// File path: assets/images/navigation/sign_out.svg
  String get signOut => 'assets/images/navigation/sign_out.svg';

  /// File path: assets/images/navigation/user_management.svg
  String get userManagement => 'assets/images/navigation/user_management.svg';

  /// List of all assets
  List<String> get values => [
    aiConsole,
    appearance,
    campaigns,
    communities,
    dashboard,
    educationHub,
    faqsAndTutorials,
    hashtags,
    libraryAssets,
    members,
    pushNotifications,
    reviewAccounts,
    sharedContent,
    sharingControls,
    signOut,
    userManagement,
  ];
}

class $AssetsImagesSocialGen {
  const $AssetsImagesSocialGen();

  /// File path: assets/images/social/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/social/facebook.png');

  /// File path: assets/images/social/instagram.png
  AssetGenImage get instagram =>
      const AssetGenImage('assets/images/social/instagram.png');

  /// File path: assets/images/social/tiktok.png
  AssetGenImage get tiktok =>
      const AssetGenImage('assets/images/social/tiktok.png');

  /// File path: assets/images/social/whatsapp.png
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/images/social/whatsapp.png');

  /// List of all assets
  List<AssetGenImage> get values => [facebook, instagram, tiktok, whatsapp];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
