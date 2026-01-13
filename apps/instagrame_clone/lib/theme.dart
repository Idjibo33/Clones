import 'package:flutter/material.dart';
import 'package:instagrame_clone/constants.dart';

class ThemeStyle {
  static ThemeData monThemeClair = ThemeData(
    colorSchemeSeed: Styles.couleurePrimaire,
    brightness: Brightness.light,
  );
  static ThemeData monThemeSombre = ThemeData(
    colorSchemeSeed: Styles.couleurePrimaire,
    brightness: Brightness.dark,
  );
}
