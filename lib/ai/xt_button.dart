import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:suixin_app/ai/common/context_extension.dart';

import '../typography.dart';

/// 带有 4 大小的圆角 button
class SquareButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;

  const SquareButton(
    this.text, {
    required this.onPressed,
    Key? key,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFButton(
      onPressed: onPressed,
      text: text,
      fullWidthButton: true,
      color: backgroundColor ?? context.xtColors().main,
      blockButton: true,
      size: GFSize.LARGE,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      disabledColor: context.xtColors().mainA20,
      textStyle: TextStyle(
          fontSize: fontSize ?? 16,
          height: 1.1,
          fontFamily: "HarmonyOS",
          fontWeight: FontWeightXT.bold,
          color: onPressed == null
              ? context.xtColors().textBlackA40
              : textColor ?? context.xtColors().textBlack),
      shape: GFButtonShape.standard,
    );
  }
}
