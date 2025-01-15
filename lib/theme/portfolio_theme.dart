import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class PortfolioMaterialTheme {
  static ThemeData dark() {
    return _theme(darkScheme());
  }

  static ThemeData _theme(ColorScheme colorScheme) {
    TextTheme bodyTextTheme = GoogleFonts.getTextTheme("Roboto");

    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: TextTheme(
        bodyLarge: bodyTextTheme.bodyLarge,
        bodyMedium: bodyTextTheme.bodyMedium,
        bodySmall: bodyTextTheme.bodySmall,
        labelLarge: bodyTextTheme.labelLarge,
        labelMedium: bodyTextTheme.labelMedium,
        labelSmall: bodyTextTheme.labelSmall,
      ).apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
    );
  }

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e5791),
      surfaceTint: Color(0xff5e5791),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe4dfff),
      onPrimaryContainer: Color(0xff1a1249),
      secondary: Color(0xff246488),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc8e6ff),
      onSecondaryContainer: Color(0xff001e2e),
      tertiary: Color(0xff246488),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc8e6ff),
      onTertiaryContainer: Color(0xff001e2e),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff171c1e),
      onSurfaceVariant: Color(0xff3f484a),
      outline: Color(0xff6f797a),
      outlineVariant: Color(0xffbfc8ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffc7bfff),
      primaryFixed: Color(0xffe4dfff),
      onPrimaryFixed: Color(0xff1a1249),
      primaryFixedDim: Color(0xffc7bfff),
      onPrimaryFixedVariant: Color(0xff463f77),
      secondaryFixed: Color(0xffc8e6ff),
      onSecondaryFixed: Color(0xff001e2e),
      secondaryFixedDim: Color(0xff94cdf6),
      onSecondaryFixedVariant: Color(0xff004c6d),
      tertiaryFixed: Color(0xffc8e6ff),
      onTertiaryFixed: Color(0xff001e2e),
      tertiaryFixedDim: Color(0xff94cdf6),
      onTertiaryFixedVariant: Color(0xff004c6d),
      surfaceDim: Color(0xffd5dbdd),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f6),
      surfaceContainer: Color(0xffe9eff1),
      surfaceContainerHigh: Color(0xffe4e9eb),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData light() {
    return _theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff423b73),
      surfaceTint: Color(0xff5e5791),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff746da9),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004867),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3f7aa0),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004868),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3f7aa0),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff171c1e),
      onSurfaceVariant: Color(0xff3b4446),
      outline: Color(0xff576162),
      outlineVariant: Color(0xff737c7e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffc7bfff),
      primaryFixed: Color(0xff746da9),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5b558e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3f7aa0),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff206186),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3f7aa0),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff216186),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdd),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f6),
      surfaceContainer: Color(0xffe9eff1),
      surfaceContainerHigh: Color(0xffe4e9eb),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData lightMediumContrast() {
    return _theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff211950),
      surfaceTint: Color(0xff5e5791),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff423b73),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002538),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff004867),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002538),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004868),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1c2527),
      outline: Color(0xff3b4446),
      outlineVariant: Color(0xff3b4446),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffeee9ff),
      primaryFixed: Color(0xff423b73),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2b255b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff004867),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003047),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004868),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003047),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdd),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f6),
      surfaceContainer: Color(0xffe9eff1),
      surfaceContainerHigh: Color(0xffe4e9eb),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData lightHighContrast() {
    return _theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc7bfff),
      surfaceTint: Color(0xffc7bfff),
      onPrimary: Color(0xff2f295f),
      primaryContainer: Color(0xff463f77),
      onPrimaryContainer: Color(0xffe4dfff),
      secondary: Color(0xff94cdf6),
      onSecondary: Color(0xff00344d),
      secondaryContainer: Color(0xff004c6d),
      onSecondaryContainer: Color(0xffc8e6ff),
      tertiary: Color(0xff94cdf6),
      onTertiary: Color(0xff00344d),
      tertiaryContainer: Color(0xff004c6d),
      onTertiaryContainer: Color(0xffc8e6ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1416),
      onSurface: Color(0xffdee3e5),
      onSurfaceVariant: Color(0xffbfc8ca),
      outline: Color(0xff899294),
      outlineVariant: Color(0xff3f484a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff5e5791),
      primaryFixed: Color(0xffe4dfff),
      onPrimaryFixed: Color(0xff1a1249),
      primaryFixedDim: Color(0xffc7bfff),
      onPrimaryFixedVariant: Color(0xff463f77),
      secondaryFixed: Color(0xffc8e6ff),
      onSecondaryFixed: Color(0xff001e2e),
      secondaryFixedDim: Color(0xff94cdf6),
      onSecondaryFixedVariant: Color(0xff004c6d),
      tertiaryFixed: Color(0xffc8e6ff),
      onTertiaryFixed: Color(0xff001e2e),
      tertiaryFixedDim: Color(0xff94cdf6),
      onTertiaryFixedVariant: Color(0xff004c6d),
      surfaceDim: Color(0xff0f1416),
      surfaceBright: Color(0xff343a3c),
      surfaceContainerLowest: Color(0xff090f11),
      surfaceContainerLow: Color(0xff171c1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2d),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffccc4ff),
      surfaceTint: Color(0xffc7bfff),
      onPrimary: Color(0xff140b44),
      primaryContainer: Color(0xff9189c7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff98d1fb),
      onSecondary: Color(0xff001827),
      secondaryContainer: Color(0xff5d97be),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff98d1fb),
      onTertiary: Color(0xff001827),
      tertiaryContainer: Color(0xff5d97be),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1416),
      onSurface: Color(0xfff6fcfe),
      onSurfaceVariant: Color(0xffc3ccce),
      outline: Color(0xff9ba5a6),
      outlineVariant: Color(0xff7b8587),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff474179),
      primaryFixed: Color(0xffe4dfff),
      onPrimaryFixed: Color(0xff0f053f),
      primaryFixedDim: Color(0xffc7bfff),
      onPrimaryFixedVariant: Color(0xff352e65),
      secondaryFixed: Color(0xffc8e6ff),
      onSecondaryFixed: Color(0xff00131f),
      secondaryFixedDim: Color(0xff94cdf6),
      onSecondaryFixedVariant: Color(0xff003a55),
      tertiaryFixed: Color(0xffc8e6ff),
      onTertiaryFixed: Color(0xff00131f),
      tertiaryFixedDim: Color(0xff94cdf6),
      onTertiaryFixedVariant: Color(0xff003a55),
      surfaceDim: Color(0xff0f1416),
      surfaceBright: Color(0xff343a3c),
      surfaceContainerLowest: Color(0xff090f11),
      surfaceContainerLow: Color(0xff171c1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2d),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData darkMediumContrast() {
    return _theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffef9ff),
      surfaceTint: Color(0xffc7bfff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffccc4ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff9fbff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff98d1fb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff9fbff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff98d1fb),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1416),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff3fcfe),
      outline: Color(0xffc3ccce),
      outlineVariant: Color(0xffc3ccce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff292258),
      primaryFixed: Color(0xffe9e3ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffccc4ff),
      onPrimaryFixedVariant: Color(0xff140b44),
      secondaryFixed: Color(0xffd1eaff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff98d1fb),
      onSecondaryFixedVariant: Color(0xff001827),
      tertiaryFixed: Color(0xffd1eaff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff98d1fb),
      onTertiaryFixedVariant: Color(0xff001827),
      surfaceDim: Color(0xff0f1416),
      surfaceBright: Color(0xff343a3c),
      surfaceContainerLowest: Color(0xff090f11),
      surfaceContainerLow: Color(0xff171c1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2d),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData darkHighContrast() {
    return _theme(darkHighContrastScheme());
  }

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
