import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData buildFirstTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: themePrimary,
    primaryColorLight: themePrimaryLight,
    primaryColorDark: themePrimaryDark,
    accentColor: themeSecondary,
    buttonColor: themeSecondary,
    backgroundColor: themeSurface,
    errorColor: themeErrorRed,
  );
}