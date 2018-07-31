import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: themePrimary,
    primaryColorLight: themePrimaryLight,
    primaryColorDark: themePrimaryDark,
    accentColor: themeSecondary,
    buttonColor: themeSecondary,
    backgroundColor: themeSurface,
    errorColor: themeErrorRed,
    textTheme: _buildTextTheme(base.textTheme, themeSurfaceText),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme, themePrimaryText),
    accentTextTheme: _buildTextTheme(base.accentTextTheme, themeSecondaryText),
    primaryIconTheme: _buildIconTheme(base.iconTheme)
  );
}

TextTheme _buildTextTheme(TextTheme base, Color themeTextColor) {
  return base.copyWith(
    display2: base.display2.copyWith(
        fontSize: 48.0,
        fontWeight: FontWeight.bold
    ),
    display1: base.display1.copyWith(
        fontSize: 40.0,
        fontWeight: FontWeight.bold
    ),
    headline: base.headline.copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.bold
    ),
    title: base.title.copyWith(
        fontSize: 20.0,
        fontWeight: FontWeight.bold
    ),
    subhead: base.subhead.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.bold
    ),
    body2: base.body2.copyWith(
        fontSize: 16.0
    ),
    body1: base.body1.copyWith(
        fontSize: 14.0
    ),
    button: base.button.copyWith(
        fontSize: 20.0,
        fontWeight: FontWeight.bold
    ),
  ).apply(
    fontFamily: 'Gilroy',
    displayColor: themeTextColor,
    bodyColor: themeTextColor
  );
}

IconThemeData _buildIconTheme(IconThemeData base) {
  return base.copyWith(color: themeSecondary, opacity: 0.5);
}