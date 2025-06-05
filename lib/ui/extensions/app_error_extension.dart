import 'package:flutter/cupertino.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import '../../data/error/error.dart';
import '../../data/error/error_l10n_codes.dart';

extension AppErrorExtensions on Object {
  String l10nMessage(BuildContext context) {
    if (this is String) {
      return this as String;
    }
    switch (AppError.fromError(this).l10nCode) {
      case AppErrorL10nCodes.noInternetConnectionError:
        return context.l10n.no_internet_connection_error;
      case AppErrorL10nCodes.somethingWentWrongError:
        return context.l10n.something_went_wrong_error;
      default:
        return context.l10n.something_went_wrong_error;
    }
  }
}
