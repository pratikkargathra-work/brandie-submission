import 'package:flutter/material.dart';

import 'colors.dart';

class ThemeNotifier extends InheritedWidget {
  final AppColorScheme colorScheme;

  const ThemeNotifier({super.key, required this.colorScheme, required super.child});

  @override
  bool updateShouldNotify(ThemeNotifier oldWidget) {
    return colorScheme != oldWidget.colorScheme;
  }
}

AppColorScheme appColorSchemeOf(BuildContext context) {
  return context.dependOnInheritedWidgetOfExactType<ThemeNotifier>()!.colorScheme;
}

class AppThemeBuilder {
  static ThemeData materialThemeFromColorScheme({
    required AppColorScheme colorScheme,
  }) {
    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      primaryColor: colorScheme.primary,
      dividerColor: colorScheme.strokeLight,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorScheme.primary,
        primary: colorScheme.primary,
        surface: colorScheme.surface,
        onPrimary: colorScheme.onPrimary,
        onSurface: colorScheme.textPrimary,
        outline: colorScheme.strokeLight,
        brightness: colorScheme.brightness,
        error: colorScheme.statusRed,
        onError: colorScheme.onPrimary,
        surfaceContainerLow: colorScheme.containerLow,
        surfaceContainer: colorScheme.containerMedium,
        surfaceContainerHigh: colorScheme.containerHigh,
        primaryContainer: colorScheme.containerLow,
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.strokeLight,
        thickness: 1,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: colorScheme.strokeDark,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        centerTitle: true,
        surfaceTintColor: colorScheme.surface,
        foregroundColor: colorScheme.textPrimary,
        scrolledUnderElevation: 3,
      ),
    );
  }
}
