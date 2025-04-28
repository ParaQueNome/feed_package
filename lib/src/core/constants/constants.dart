import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kTextThemeLight = GoogleFonts.kaiseiOptiTextTheme(TextTheme(
  headlineSmall: GoogleFonts.oswald(),
));

final kLightTheme = ThemeData(
  textTheme: kTextThemeLight,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF1A85F9),
  ),
);

final kDarkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color(0xFF1A85F9),
  ),
);

// 4D59FF
// 8C8EB5
