import 'package:flutter/material.dart';
import 'package:oriflame/ui/extensions/app_error_extension.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import '../../style/theme/typography/typography.dart';

void showErrorSnackBar({required BuildContext context, required Object error}) {
  final message = error.l10nMessage(context);
  showSnackBar(
    context: context,
    text: message,
    icon: Icon(
      Icons.warning_amber_rounded,
      color: context.colorScheme.statusRed,
    ),
  );
}

void showSnackBar({
  required BuildContext context,
  required String text,
  Widget? icon,
  Duration duration = const Duration(seconds: 4),
}) {
  final snackBar = SnackBar(
    elevation: 0,
    margin: const EdgeInsets.all(16),
    content: Row(
      children: [
        if (icon != null) icon,
        if (icon != null) const SizedBox(width: 10),
        Flexible(
          child: Text(
            text,
            style: AppTextStyles.body2.copyWith(
              color: context.colorScheme.textPrimary,
            ),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
    backgroundColor: context.colorScheme.containerMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    behavior: SnackBarBehavior.floating,
    duration: duration,
  );
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
