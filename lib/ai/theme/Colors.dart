import 'package:flutter/material.dart';

final ThemeData darkThemeData =
    ThemeData.dark().copyWith(primaryColor: Colors.black);

class XTColors {
  // XT Colors
  final Color main = const Color(0xFFFFBE40);
  final Color mainA40 = const Color(0x66FFBE40);
  final Color mainA20 = const Color(0x33FFBE40);
  final Color mainA10 = const Color(0x1AFFBE40);
  final Color green = const Color(0xFF17C186);
  final Color greenA40 = const Color(0x6617C186);
  final Color greenA20 = const Color(0x3317C186);
  final Color greenA10 = const Color(0x1A17C186);

  final Color red = const Color(0xFFFD5760);
  final Color redA40 = const Color(0x66FD5760);
  final Color redA20 = const Color(0x33FD5760);
  final Color redA10 = const Color(0x1AFD5760);
  final Color white = const Color(0xFFFFFFFF);
  final Color black = const Color(0xFF2D2D2E);
  final Color blackA20 = const Color(0x33000000);
  final Color blue = const Color(0xFF238FDD);
  final Color blueA10 = const Color(0x1A238FDD);
  final Color purple = const Color(0xFF5C00F3);
  final Color purpleA10 = const Color(0x1A5C00F3);
  final Color orange = const Color(0xFFFF7A00);
  final Color orangeA10 = const Color(0x1AFF7A00);
  final Color textBlack = const Color(0xCC000000);
  final Color textWhite = const Color(0xFFFFFFFF);
  final Color textBlackA40 = const Color(0x66000000);
  final Color textWhiteA40 = const Color(0x66FFFFFF);
  final Color textWhiteA60 = const Color(0x99FFFFFF);
  final Color maskBackground = const Color(0x66000000);
  final Color buttonBorder = const Color(0xFFC4C4C4);
  final Color toastBackground = const Color(0xBF000000);
  final Color blackShadow = const Color(0x0D000000);
  final Color popColor = const Color(0x00C4C4C4);

  late Color textPrimaryWhiteBlack;
  late Color textSecondaryWhiteBlack;
  late Color textTertiaryWhiteBlack;
  late Color textPromptWhiteBlack;

  late Color backgroundPrimary;
  late Color backgroundSecondary;
  late Color backgroundTertiary;
  late Color textPrimary;
  late Color textSecondary;
  late Color textTertiary;
  late Color textPrompt;
  late Color inputBackground;
  late Color splashColor;
  late Color highlightColor;
  late Color dialogBackground;
  late Color whiteBlack;
  late Color whiteBlackA80;
  late Color whiteBlackA60;
  late Color whiteBlackA40;
  late Color whiteBlackA20;
  late Color whiteBlackA8;
  late Color blackWhite;
  late Color blackWhiteA80;
  late Color blackWhiteA60;
  late Color blackWhiteA40;
  late Color blackWhiteA20;
  late Color blackWhiteA8;

  late Color backgroundCountDown;
  // 上涨颜色
  late Color positive;
  // 下跌颜色
  late Color negative;
  late Color positiveA10;
  late Color negativeA10;
  late Color positiveA20;
  late Color negativeA20;

  late Color backgroundButton;

  late Color textIconCommonPrimary;
  late Color textIconCommonSecondary;
  late Color textIconCommonTertiary;
  late Color textIconCommonQuaternary;
  late Color textIconCommonAuxiliary;
  late Color textIconCommonContrast;

  late Color textIconBrandMain;
  late Color textIconBrandMainA40;
  late Color textIconBrandMainA20;
  late Color textIconBrandMainA10;

  late Color textIconBrandRed;
  late Color textIconBrandRedA40;
  late Color textIconBrandRedA20;
  late Color textIconBrandRedA10;

  late Color textIconBrandGreen;
  late Color textIconBrandGreenA40;
  late Color textIconBrandGreenA20;
  late Color textIconBrandGreenA10;

  late Color textIconStaticPrimaryWhite;
  late Color textIconStaticPrimaryBlack;
  late Color textIconStaticTertiaryButton;
  late Color textIconStaticDisabledButtonText;
  late Color textIconStaticButtonText;
  late Color textIconStaticPromptText;

  late Color bgCommonPrimary;
  late Color bgCommonTertiary;
  late Color bgCommonWhiteA5;
  late Color bgCommonWhiteA60;

  late Color bgButtonPrimary;
  late Color bgButtonTertiary;
  late Color bgButtonRed;
  late Color bgButtonGreen;
  late Color bgButtonGray;

  late Color bgTagYellow;
  late Color bgTagRed;
  late Color bgTagGreen;
  late Color bgTagGrey;

  late Color bgIconBg;
  late Color bgInputBoxBg;

  late Color bgStaticMask;
  late Color bgStaticToast;
  late Color bgStaticIcon;
  late Color bgStaticInputBoxHomePage;

  late Color bgChartGreen;
  late Color bgChartBlue;
  late Color bgChartPurple;
  late Color bgChartOrange;
  late Color bgChartSecondBlue;

  late Color bgStrokePrimaryLine;
  late Color bgStrokeTertiaryLine;

  static final XTColors _dark = XTColors._darkInternal();
  static final XTColors _light = XTColors._lightInternal();

  void changeUpDownColors(bool greenUpRedDown) {
    if (greenUpRedDown) {
      positive = green;
      negative = red;
      positiveA10 = greenA10;
      negativeA10 = redA10;
      positiveA20 = greenA20;
      negativeA20 = redA20;
    } else {
      positive = red;
      negative = green;
      positiveA10 = redA10;
      negativeA10 = greenA10;
      positiveA20 = redA20;
      negativeA20 = greenA20;
    }
  }

  XTColors._darkInternal() {
    backgroundPrimary = const Color(0xFF262626);
    backgroundSecondary = const Color(0xFF19191E);
    backgroundTertiary = const Color(0xFF2D2D2E);
    textPrimary = const Color(0xFFFFFFFF);
    textSecondary = const Color(0x99FFFFFF);
    textTertiary = const Color(0x66FFFFFF);
    textPrompt = const Color(0x33FFFFFF);
    blackWhite = const Color(0xFFFFFFFF);
    blackWhiteA40 = const Color(0x66FFFFFF);
    blackWhiteA60 = const Color(0x99FFFFFF);
    blackWhiteA80 = const Color(0xCCFFFFFF);
    blackWhiteA8 = const Color(0x14FFFFFF);
    blackWhiteA20 = const Color(0x33FFFFFF);
    dialogBackground = const Color(0xF22D2D2E);
    inputBackground = const Color(0x08FFFFFF);
    textPrimaryWhiteBlack = const Color(0xCC000000);
    textPromptWhiteBlack = const Color(0x33000000);
    textSecondaryWhiteBlack = const Color(0x99000000);
    textTertiaryWhiteBlack = const Color(0x66000000);
    whiteBlack = const Color(0xFF000000);
    whiteBlackA20 = const Color(0x33000000);
    whiteBlackA40 = const Color(0x66000000);
    whiteBlackA60 = const Color(0x99000000);
    whiteBlackA8 = const Color(0x14000000);
    whiteBlackA80 = const Color(0xCC000000);
    backgroundCountDown = const Color(0xFF18181D);
    backgroundButton = const Color(0xFF161616);
    splashColor = const Color(0x08FFFFFF);
    highlightColor = const Color(0x08FFFFFF);

    ///  新的颜色
    textIconCommonPrimary = const Color(0xFFFFFFFF);
    textIconCommonSecondary = const Color(0x99FFFFFF);
    textIconCommonTertiary = const Color(0x66FFFFFF);
    textIconCommonQuaternary = const Color(0x33FFFFFF);
    textIconCommonAuxiliary = const Color(0xCCFFFFFF);
    textIconCommonContrast = const Color(0xFF333333);

    textIconBrandMain = main;
    textIconBrandMainA40 = mainA40;
    textIconBrandMainA20 = mainA20;
    textIconBrandMainA10 = mainA10;

    textIconBrandRed = red;
    textIconBrandRedA40 = redA40;
    textIconBrandRedA20 = redA20;
    textIconBrandRedA10 = redA10;

    textIconBrandGreen = green;
    textIconBrandGreenA40 = greenA40;
    textIconBrandGreenA20 = greenA20;
    textIconBrandGreenA10 = greenA10;

    textIconStaticPrimaryWhite = const Color(0xFFFFFFFF);
    textIconStaticPrimaryBlack = const Color(0xFF333333);
    textIconStaticTertiaryButton = const Color(0xFF1E1E1E);
    textIconStaticDisabledButtonText = const Color(0x33000000);
    textIconStaticButtonText = const Color(0xFF333333);
    textIconStaticPromptText = const Color(0xFF666666);

    bgCommonPrimary = const Color(0xFF121212);
    bgCommonTertiary = const Color(0xFF000000);
    bgCommonWhiteA5 = const Color(0x0D121212);
    bgCommonWhiteA60 = const Color(0x99000000);

    bgButtonPrimary = main;
    bgButtonTertiary = const Color(0xFF1E1E1E);
    bgButtonRed = red;
    bgButtonGreen = green;
    bgButtonGray = const Color(0x14FFFFFF);

    bgTagYellow = mainA10;
    bgTagRed = redA10;
    bgTagGreen = greenA10;
    bgTagGrey = const Color(0x0DFFFFFF);

    bgIconBg = const Color(0x0DFFFFFF);
    bgInputBoxBg = const Color(0x07FFFFFF);

    bgStaticMask = const Color(0x66000000);
    bgStaticToast = const Color(0x99000000);
    bgStaticIcon = const Color(0xFFCCCCCC);
    bgStaticInputBoxHomePage = const Color(0x14FFFFFF);

    bgChartGreen = green;
    bgChartBlue = blue;
    bgChartPurple = purple;
    bgChartOrange = orange;
    bgChartSecondBlue = const Color(0xFF0075FF);

    bgStrokePrimaryLine = const Color(0x07FFFFFF);
    bgStrokeTertiaryLine = const Color(0x14FFFFFF);
  }

  XTColors._lightInternal() {
    backgroundPrimary = const Color(0xFFFFFFFF);
    backgroundSecondary = const Color(0xFFFFFFFF);
    backgroundTertiary = const Color(0xFFF8F8F8);
    textPrimary = const Color(0xCC000000);
    textSecondary = const Color(0x99000000);
    textTertiary = const Color(0x66000000);
    textPrompt = const Color(0x99000000);
    blackWhite = const Color(0xFF000000);
    blackWhiteA40 = const Color(0x66000000);
    blackWhiteA60 = const Color(0x99000000);
    blackWhiteA80 = const Color(0xCC000000);
    blackWhiteA8 = const Color(0x14000000);
    blackWhiteA20 = const Color(0x33000000);
    dialogBackground = const Color(0xF2FFFFFF);
    inputBackground = const Color(0x08000000);
    textPrimaryWhiteBlack = const Color(0xFFFFFFFF);
    textPromptWhiteBlack = const Color(0x33FFFFFF);
    textSecondaryWhiteBlack = const Color(0x99FFFFFF);
    textTertiaryWhiteBlack = const Color(0x66FFFFFF);
    whiteBlack = const Color(0xFFFFFFFF);
    whiteBlackA20 = const Color(0x33FFFFFF);
    whiteBlackA40 = const Color(0x66FFFFFF);
    whiteBlackA60 = const Color(0x99FFFFFF);
    whiteBlackA8 = const Color(0x14FFFFFF);
    whiteBlackA80 = const Color(0xCCFFFFFF);
    backgroundCountDown = const Color(0xFFF5F5F5);
    backgroundButton = const Color(0xFFF8F8F8);

    ///  新的颜色
    splashColor = const Color(0x08000000);
    highlightColor = const Color(0x08000000);
    textIconCommonPrimary = const Color(0xFF333333);
    textIconCommonSecondary = const Color(0xFF666666);
    textIconCommonTertiary = const Color(0xFF999999);
    textIconCommonQuaternary = const Color(0xFFCCCCCC);
    textIconCommonAuxiliary = const Color(0xFFEBEBEB);
    textIconCommonContrast = const Color(0xFFFFFFFF);

    textIconBrandMain = main;
    textIconBrandMainA40 = mainA40;
    textIconBrandMainA20 = mainA20;
    textIconBrandMainA10 = mainA10;

    textIconBrandRed = red;
    textIconBrandRedA40 = redA40;
    textIconBrandRedA20 = redA20;
    textIconBrandRedA10 = redA10;

    textIconBrandGreen = green;
    textIconBrandGreenA40 = greenA40;
    textIconBrandGreenA20 = greenA20;
    textIconBrandGreenA10 = greenA10;

    textIconStaticPrimaryWhite = const Color(0xFFFFFFFF);
    textIconStaticPrimaryBlack = const Color(0xFF333333);
    textIconStaticTertiaryButton = const Color(0xFF1E1E1E);
    textIconStaticDisabledButtonText = const Color(0x33000000);
    textIconStaticButtonText = const Color(0xFF333333);
    textIconStaticPromptText = const Color(0xFF666666);

    bgCommonPrimary = const Color(0xFFFFFFFF);
    bgCommonTertiary = const Color(0xFFF8F8F8);
    bgCommonWhiteA5 = const Color(0x0DFFFFFF);
    bgCommonWhiteA60 = const Color(0x99FFFFFF);

    bgButtonPrimary = main;
    bgButtonTertiary = const Color(0xFF1E1E1E);
    bgButtonRed = red;
    bgButtonGreen = green;
    bgButtonGray = const Color(0xFFEBEBEB);

    bgTagYellow = mainA10;
    bgTagRed = redA10;
    bgTagGreen = greenA10;
    bgTagGrey = const Color(0xFFF3F3F3);

    bgIconBg = const Color(0xFFF3F3F3);
    bgInputBoxBg = const Color(0xFFF7F7F7);

    bgStaticMask = const Color(0x66000000);
    bgStaticToast = const Color(0x99000000);
    bgStaticIcon = const Color(0xFFCCCCCC);
    bgStaticInputBoxHomePage = const Color(0x14FFFFFF);

    bgChartGreen = green;
    bgChartBlue = blue;
    bgChartPurple = purple;
    bgChartOrange = orange;
    bgChartSecondBlue = const Color(0xFF0075FF);

    bgStrokePrimaryLine = const Color(0xFFF7F7F7);
    bgStrokeTertiaryLine = const Color(0xFFEBEBEB);
  }

  factory XTColors.light() => XTColors._light;

  factory XTColors.dark() => XTColors._dark;
}
