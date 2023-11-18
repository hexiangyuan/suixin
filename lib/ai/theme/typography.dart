import 'package:flutter/material.dart';
import 'dart:io';

import 'package:suixin_app/ai/common/context_extension.dart';

class FontWeightXT {
  static const FontWeight regular = FontWeight.w400;

  static const FontWeight medium = FontWeight.w500;

  static const FontWeight medium2 = FontWeight.w600;

  static const FontWeight bold = FontWeight.w700;

  /// 兼容 Android 汗渍没有 FontWeight w500 的情况
  static final FontWeight mediumCompact =
      Platform.isAndroid ? FontWeight.w600 : FontWeight.w500;
}

extension XTTypography on BuildContext {
  /// 导航栏标题 `fontSize`: `18`, `color`: `primary`, bold
  TextStyle h1() {
    return TextStyle(
        fontSize: 18,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.bold);
  }

  /// `fontSize`: `16`, `color`: `primary`, medium, figma 字体16 用h2
  TextStyle h2() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 16 : 17,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.medium);
  }

  /// `fontSize`: `14`, `color`: `primary` regular, figma 字体14 用h3
  TextStyle h3() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 14 : 15,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.regular);
  }

  /// `fontSize`: `12`, `color`: `tertiary` regular, figma 字体12 用h4
  TextStyle h4() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 12 : 13,
        color: xtColors().textIconCommonTertiary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.regular);
  }

  /// `fontSize`: `11`, `color`: `tertiary` regular, figma 字体11 用h5
  TextStyle h5() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 11 : 12,
        color: xtColors().textIconCommonTertiary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.regular);
  }

  /// `fontSize`: `10`, `color`: `tertiary` regular, figma 字体10 用h6
  TextStyle h6() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 10 : 11,
        color: xtColors().textIconCommonTertiary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.regular);
  }

  /// `fontSize`: `15`, `color`: `primary` mediu, figma 字体是15 用h7
  TextStyle h7() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 15 : 16,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.medium);
  }

  TextStyle h8() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 13 : 14,
        color: xtColors().textIconCommonTertiary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.regular);
  }

  TextStyle h9() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 24 : 25,
        color: xtColors().textIconCommonPrimary,
        height: 1.0,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.bold);
  }

  TextStyle h10() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 17 : 18,
        color: xtColors().textIconCommonTertiary,
        height: 1.0,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.bold);
  }

  /// `fontSize`: `26`, `color`: `primary` bold
  TextStyle boldNumber() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 26 : 27,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.medium);
  }

  /// `fontSize`: `24`, `color`: `primary` medium
  TextStyle display1() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 24 : 25,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.medium);
  }

  /// `fontSize`: `22`, `color`: `primary` medium
  TextStyle display2() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 22 : 23,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.medium);
  }

  /// `fontSize`: `20`, `color`: `primary` medium
  TextStyle display3() {
    return TextStyle(
        fontSize: Platform.isAndroid ? 20 : 21,
        color: xtColors().textIconCommonPrimary,
        fontFamily: "HarmonyOS",
        fontWeight: FontWeightXT.medium);
  }

  /// `fontSize`: `9`, `color`: `primary` regular
  TextStyle font9() {
    return TextStyle(
      fontSize: 9,
      color: xtColors().textIconCommonPrimary,
      fontFamily: "HarmonyOS",
      fontWeight: FontWeightXT.regular,
    );
  }

  /// `fontSize`: `8`, `color`: `primary` regular
  TextStyle font8() {
    return TextStyle(
      fontSize: 8,
      color: xtColors().textIconCommonPrimary,
      fontFamily: "HarmonyOS",
      fontWeight: FontWeightXT.regular,
    );
  }

  /// `fontSize`: `30`, `color`: `primary` regular
  TextStyle font30() {
    return TextStyle(
      fontSize: 30,
      color: xtColors().textIconCommonPrimary,
      fontFamily: "HarmonyOS",
      fontWeight: FontWeightXT.regular,
    );
  }

  /// `fontSize`: `19`, `color`: `primary` regular
  TextStyle font19() {
    return TextStyle(
      fontSize: 19,
      color: xtColors().textIconCommonPrimary,
      fontFamily: "HarmonyOS",
      height: 1.0,
      fontWeight: FontWeight.w700,
    );
  }
}
