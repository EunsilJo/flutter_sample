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
    primaryIconTheme: _buildIconTheme(base.iconTheme, themeSecondary),
    buttonTheme: _buildButtonTheme(base.buttonTheme, 48.0),
    inputDecorationTheme: _buildDecorationTheme()
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

IconThemeData _buildIconTheme(IconThemeData base, Color color) {
  return base.copyWith(color: color, opacity: 0.5);
}

ButtonThemeData _buildButtonTheme(ButtonThemeData base, double height) {
  return base.copyWith(height: height);
}

InputDecorationTheme _buildDecorationTheme() {
  return InputDecorationTheme(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0)
  );
}

ShapeBorder buildButtonShapeBorder() {
  return BeveledRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(7.0))
  );
}

class PrimaryColorOverride extends StatelessWidget {
  const PrimaryColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}