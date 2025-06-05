import 'dart:ui';

class AppColorScheme {
  final Color primary;

  final Color strokeDark;
  final Color strokeLight;

  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;

  final Color onPrimary;
  final Color surface;

  final Color containerLow;
  final Color containerMedium;
  final Color containerHigh;

  final Color statusRed;
  final Color statusGreen;

  final Brightness brightness;

  const AppColorScheme({
    this.primary = const Color(0xFF3C54EF),
    required this.strokeDark,
    required this.strokeLight,
    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,
    this.onPrimary = const Color(0xFFFFFFFF),
    required this.surface,
    required this.containerLow,
    required this.containerMedium,
    required this.containerHigh,
    this.statusRed = const Color(0xFFDD2828),
    this.statusGreen = const Color(0xFF199C1E),
    required this.brightness,
  });
}

final lightThemeColors = const AppColorScheme(
  strokeDark: Color(0xFFD7D8E0),
  strokeLight: Color(0xFFEDEDEF),
  textPrimary: Color(0xFF212328),
  textSecondary: Color(0xFF54565F),
  textDisabled: Color(0xFF656B76),
  surface: Color(0xFFFFFFFF),
  containerLow: Color(0x084e5156),
  containerMedium: Color(0x0D4e5156),
  containerHigh: Color(0x174e5156),
  brightness: Brightness.light,
);

final darkThemeColors = const AppColorScheme(
  strokeDark: Color(0x40FFFFFF),
  strokeLight: Color(0x26FFFFFF),
  textPrimary: Color(0xFFFFFFFF),
  textSecondary: Color(0xCCB2B2BC),
  textDisabled: Color(0x80FFFFFF),
  surface: Color(0xFF000000),
  containerLow: Color(0xFF0F0F0F),
  containerMedium: Color(0xFF191919),
  containerHigh: Color(0xFF232323),
  brightness: Brightness.dark,
);
