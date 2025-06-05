import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'Oriflame'**
  String get app_name;

  /// No description provided for @common_id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get common_id;

  /// No description provided for @common_whatsapp_number.
  ///
  /// In en, this message translates to:
  /// **'Whatsapp Number'**
  String get common_whatsapp_number;

  /// No description provided for @common_friends.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get common_friends;

  /// No description provided for @common_followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get common_followers;

  /// No description provided for @common_following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get common_following;

  /// No description provided for @common_posts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get common_posts;

  /// No description provided for @common_likes.
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get common_likes;

  /// No description provided for @common_instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get common_instagram;

  /// No description provided for @common_facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get common_facebook;

  /// No description provided for @common_whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get common_whatsapp;

  /// No description provided for @common_tiktok.
  ///
  /// In en, this message translates to:
  /// **'TikTok'**
  String get common_tiktok;

  /// No description provided for @common_sort_by.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get common_sort_by;

  /// No description provided for @common_filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get common_filter;

  /// No description provided for @common_approve.
  ///
  /// In en, this message translates to:
  /// **'Approve'**
  String get common_approve;

  /// No description provided for @common_decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get common_decline;

  /// No description provided for @common_go_to.
  ///
  /// In en, this message translates to:
  /// **'Go to'**
  String get common_go_to;

  /// No description provided for @common_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get common_profile;

  /// No description provided for @something_went_wrong_error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again later.'**
  String get something_went_wrong_error;

  /// No description provided for @no_internet_connection_error.
  ///
  /// In en, this message translates to:
  /// **'No internet connection. Please check your internet connection and try again.'**
  String get no_internet_connection_error;

  /// No description provided for @empty_search_result_title.
  ///
  /// In en, this message translates to:
  /// **'No Results Found!'**
  String get empty_search_result_title;

  /// No description provided for @empty_search_result_description.
  ///
  /// In en, this message translates to:
  /// **'Try refining your search or check for typos. We’re here to help you find what you need!'**
  String get empty_search_result_description;

  /// No description provided for @empty_review_accounts_title.
  ///
  /// In en, this message translates to:
  /// **'Nothing to show here'**
  String get empty_review_accounts_title;

  /// No description provided for @empty_review_accounts_description.
  ///
  /// In en, this message translates to:
  /// **'Your review accounts will show here'**
  String get empty_review_accounts_description;

  /// No description provided for @empty_archive_accounts_title.
  ///
  /// In en, this message translates to:
  /// **'Nothing Archived Yet!'**
  String get empty_archive_accounts_title;

  /// No description provided for @empty_archive_accounts_description.
  ///
  /// In en, this message translates to:
  /// **'Your archived accounts will show here'**
  String get empty_archive_accounts_description;

  /// No description provided for @dashboard_title.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard_title;

  /// No description provided for @shared_content_title.
  ///
  /// In en, this message translates to:
  /// **'Shared Content'**
  String get shared_content_title;

  /// No description provided for @members_title.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members_title;

  /// No description provided for @library_assets_title.
  ///
  /// In en, this message translates to:
  /// **'Library Assets'**
  String get library_assets_title;

  /// No description provided for @education_hub_title.
  ///
  /// In en, this message translates to:
  /// **'Education Hub'**
  String get education_hub_title;

  /// No description provided for @campaigns_title.
  ///
  /// In en, this message translates to:
  /// **'Campaigns'**
  String get campaigns_title;

  /// No description provided for @communities_title.
  ///
  /// In en, this message translates to:
  /// **'Communities'**
  String get communities_title;

  /// No description provided for @hashtags_title.
  ///
  /// In en, this message translates to:
  /// **'Hashtags'**
  String get hashtags_title;

  /// No description provided for @ai_console_title.
  ///
  /// In en, this message translates to:
  /// **'AI Console'**
  String get ai_console_title;

  /// No description provided for @review_accounts_title.
  ///
  /// In en, this message translates to:
  /// **'Review Accounts'**
  String get review_accounts_title;

  /// No description provided for @push_notifications_title.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get push_notifications_title;

  /// No description provided for @sharing_controls_title.
  ///
  /// In en, this message translates to:
  /// **'Sharing Controls'**
  String get sharing_controls_title;

  /// No description provided for @user_management_title.
  ///
  /// In en, this message translates to:
  /// **'User Management'**
  String get user_management_title;

  /// No description provided for @appearance_title.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance_title;

  /// No description provided for @faqs_and_tutorials_title.
  ///
  /// In en, this message translates to:
  /// **'FAQs & Tutorials'**
  String get faqs_and_tutorials_title;

  /// No description provided for @sign_out_title.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get sign_out_title;

  /// No description provided for @powered_by_text.
  ///
  /// In en, this message translates to:
  /// **'Powered by'**
  String get powered_by_text;

  /// No description provided for @date_connected_filter_title.
  ///
  /// In en, this message translates to:
  /// **'Date Connected'**
  String get date_connected_filter_title;

  /// No description provided for @username_filter_title.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username_filter_title;

  /// No description provided for @search_account_field_hint.
  ///
  /// In en, this message translates to:
  /// **'Search by username, first name, last name'**
  String get search_account_field_hint;

  /// No description provided for @archive_title.
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get archive_title;

  /// No description provided for @validate_title.
  ///
  /// In en, this message translates to:
  /// **'Validate'**
  String get validate_title;

  /// No description provided for @back_to_review_account_text.
  ///
  /// In en, this message translates to:
  /// **'Go Back to Review Accounts'**
  String get back_to_review_account_text;

  /// No description provided for @trying_to_connect_text.
  ///
  /// In en, this message translates to:
  /// **'Trying to connect'**
  String get trying_to_connect_text;

  /// No description provided for @last_post_text.
  ///
  /// In en, this message translates to:
  /// **'Last Post'**
  String get last_post_text;

  /// No description provided for @last_seen_text.
  ///
  /// In en, this message translates to:
  /// **'Last Seen'**
  String get last_seen_text;

  /// No description provided for @joined_text.
  ///
  /// In en, this message translates to:
  /// **'joined'**
  String get joined_text;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
