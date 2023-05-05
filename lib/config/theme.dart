import 'package:flutter/material.dart';

/*
/** CSS DARK THEME PRIMARY COLORS */
--color-primary-100: #406c44;
--color-primary-200: #547b57;
--color-primary-300: #698b6a;
--color-primary-400: #7d9b7e;
--color-primary-500: #92ab92;
--color-primary-600: #a7bba7;
/** CSS DARK THEME SURFACE COLORS */
--color-surface-100: #121212;
--color-surface-200: #282828;
--color-surface-300: #3f3f3f;
--color-surface-400: #575757;
--color-surface-500: #717171;
--color-surface-600: #8b8b8b;
/** CSS DARK THEME MIXED SURFACE COLORS */
--color-surface-mixed-100: #171b17;
--color-surface-mixed-200: #2c302c;
--color-surface-mixed-300: #434643;
--color-surface-mixed-400: #5b5e5b;
--color-surface-mixed-500: #747774;
--color-surface-mixed-600: #8e908e;
/** EXAMPLES */
color: var(--color-primary-600);
background-color: var(--color-surface-300);
*/

const Color green = Color(0xFF456350);
const Color greenL = Color(0xFF7f9486);
const Color dark = Color(0xFF151515);
const Color darkM = Color(0xFF171b17);
const Color darkL = Color(0xFF1C1C1C);
const Color gray = Color(0xFF8b8b8b);
const Color white = Color(0xffbbbbbb);

abstract class MyThemesRepository {
  ThemeData darkTheme();
}

class MyThemes implements MyThemesRepository {
  MyThemes();

  final ColorScheme colorScheme = const ColorScheme.dark(
    primary: green,
    secondary: greenL,
    background: dark,
    tertiary: darkL,
  );

  final TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(color: white, fontSize: 26),
    displayMedium: TextStyle(color: white, fontSize: 20,),
    displaySmall: TextStyle(color: white, fontSize: 16),
    bodyLarge: TextStyle(color: gray, fontSize: 16),
    bodyMedium: TextStyle(color: gray, fontSize: 14),
    bodySmall: TextStyle(color: gray, fontSize: 10),
  );

  @override
  ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: green,
      scaffoldBackgroundColor: dark,
      textTheme: textTheme,
      colorScheme: colorScheme,
      iconTheme: const IconThemeData(
        color: greenL,
      ),
    );
  }
}