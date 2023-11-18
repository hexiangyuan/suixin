import 'dart:io';

import 'package:flutter/material.dart';

import '../../typography.dart';
import 'Colors.dart';

class AppThemeData {
  final XTColors colors;

  AppThemeData(this.colors);

  factory AppThemeData.light() => AppThemeData(XTColors.light());

  factory AppThemeData.dark() => AppThemeData(XTColors.dark());
}

class XTThemeData {
  static final XTColors _lightColors = XTColors.light();
  static final XTColors _darkColors = XTColors.dark();

  static final dark = ThemeData(
      brightness: Brightness.dark,
      fontFamily: "HarmonyOS",
      focusColor: _darkColors.main,
      primaryColor: _darkColors.main,
      scaffoldBackgroundColor: _darkColors.backgroundPrimary,
      cardColor: _darkColors.backgroundPrimary,
      dividerColor: _darkColors.inputBackground,
      highlightColor: Colors.transparent,
      hintColor: _darkColors.textSecondary,
      indicatorColor: _darkColors.main,
      expansionTileTheme: ExpansionTileThemeData(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: _darkColors.bgStrokePrimaryLine),
          borderRadius: BorderRadius.circular(4),
        ),
        iconColor: _darkColors.textIconCommonPrimary,
        collapsedIconColor: _darkColors.textIconCommonPrimary,
        collapsedShape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: _darkColors.bgStrokePrimaryLine),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      // datePickerTheme: DatePickerThemeData(headerBackgroundColor: _darkColors.main),
      splashColor: Colors.transparent,
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: _darkColors.main,
        labelPadding: const EdgeInsets.symmetric(horizontal: 15),
        labelColor: _darkColors.textPrimary,
        labelStyle: TextStyle(
          fontSize: Platform.isAndroid ? 14 : 15,
          fontFamily: "HarmonyOS",
          fontWeight: FontWeightXT.medium,
        ),
        unselectedLabelColor: _darkColors.textTertiary,
        unselectedLabelStyle: TextStyle(
          fontSize: Platform.isAndroid ? 14 : 15,
          fontFamily: "HarmonyOS",
          fontWeight: FontWeightXT.medium,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: _darkColors.backgroundPrimary,
          elevation: 1,
          selectedItemColor: _darkColors.main,
          unselectedItemColor: _darkColors.blackWhiteA40,
          unselectedLabelStyle:
              TextStyle(fontSize: 10, color: _darkColors.blackWhiteA40),
          selectedLabelStyle: TextStyle(fontSize: 10, color: _darkColors.main)),
      appBarTheme: AppBarTheme(
          color: _darkColors.backgroundPrimary,
          iconTheme: IconThemeData(color: _darkColors.textPrimary),
          titleTextStyle: TextStyle(
            color: _darkColors.textPrimary,
            fontSize: Platform.isAndroid ? 18 : 18,
            fontWeight: FontWeightXT.medium,
          ),
          elevation: 0),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: _darkColors.main));
  static final light = ThemeData(
      brightness: Brightness.light,
      fontFamily: "HarmonyOS",
      focusColor: _lightColors.main,
      primaryColor: _lightColors.main,
      scaffoldBackgroundColor: _lightColors.backgroundPrimary,
      cardColor: _lightColors.backgroundPrimary,
      dividerColor: _lightColors.inputBackground,
      highlightColor: Colors.transparent,
      hintColor: _lightColors.textSecondary,
      indicatorColor: _lightColors.main,
      expansionTileTheme: ExpansionTileThemeData(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: _lightColors.bgStrokePrimaryLine),
          borderRadius: BorderRadius.circular(4),
        ),
        iconColor: _lightColors.textIconCommonPrimary,
        collapsedIconColor: _lightColors.textIconCommonPrimary,
        collapsedShape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: _lightColors.bgStrokePrimaryLine),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      // datePickerTheme: DatePickerThemeData(headerBackgroundColor: _lightColors.main),
      splashColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: _lightColors.backgroundPrimary,
          elevation: 1,
          selectedItemColor: _lightColors.main,
          unselectedItemColor: _lightColors.blackWhiteA40,
          unselectedLabelStyle:
              TextStyle(fontSize: 12, color: _lightColors.blackWhiteA40),
          selectedLabelStyle:
              TextStyle(fontSize: 12, color: _lightColors.main)),
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: _lightColors.main,
        labelPadding: const EdgeInsets.symmetric(horizontal: 15),
        labelColor: _lightColors.textPrimary,
        labelStyle: TextStyle(
          fontSize: Platform.isAndroid ? 14 : 15,
          fontWeight: FontWeightXT.bold,
        ),
        unselectedLabelColor: _lightColors.textTertiary,
        unselectedLabelStyle: TextStyle(
          fontSize: Platform.isAndroid ? 14 : 15,
          fontWeight: FontWeightXT.bold,
        ),
      ),
      appBarTheme: AppBarTheme(
          color: _lightColors.backgroundPrimary,
          iconTheme: IconThemeData(color: _lightColors.textPrimary),
          titleTextStyle: TextStyle(
            color: _lightColors.textPrimary,
            fontSize: Platform.isAndroid ? 17 : 18,
            fontWeight: FontWeightXT.bold,
          ),
          elevation: 0),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: _darkColors.main));
}
