import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:suixin_app/ai/common/context_extension.dart';

extension WidgetExt on Widget {
  /// 包裹到 Container
  Container intoContainer(
      {Key? key,
      AlignmentGeometry? alignment,
      EdgeInsetsGeometry? padding,
      Color? color,
      Decoration? decoration,
      Decoration? foregroundDecoration,
      double? width,
      double? height,
      BoxConstraints? constraints,
      EdgeInsetsGeometry? margin,
      Matrix4? transform,
      AlignmentGeometry? transformAlignment,
      Clip clipBehavior = Clip.none}) {
    return Container(
        key: key,
        alignment: alignment,
        padding: padding,
        color: color,
        decoration: decoration,
        foregroundDecoration: foregroundDecoration,
        width: width,
        height: height,
        constraints: constraints,
        margin: margin,
        transform: transform,
        transformAlignment: transformAlignment,
        clipBehavior: clipBehavior,
        child: this);
  }

  /// 包裹到 Padding
  Padding intoPadding({Key? key, required EdgeInsetsGeometry padding}) {
    return Padding(key: key, padding: padding, child: this);
  }

  /// 包裹到 Align
  Align intoAlign(
      {Key? key,
      AlignmentGeometry alignment = Alignment.center,
      double? widthFactor,
      double? heightFactor}) {
    return Align(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this);
  }

  /// 包裹到 Center
  Center intoCenter({Key? key, double? widthFactor, double? heightFactor}) {
    return Center(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this);
  }

  /// 包裹到 Expanded
  Expanded intoExpanded({Key? key, int flex = 1}) {
    return Expanded(key: key, flex: flex, child: this);
  }

  /// 包裹到 Positioned
  Positioned intoPositioned(
      {Key? key,
      double? left,
      double? top,
      double? right,
      double? bottom,
      double? width,
      double? height}) {
    return Positioned(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        width: width,
        height: height,
        child: this);
  }

  /// 包裹到 SizedBox
  SizedBox intoSizedBox({Key? key, double? width, double? height}) {
    return SizedBox(key: key, width: width, height: height, child: this);
  }

  /// 包裹到 Shimmer
  Widget intoShimmer(BuildContext context,
      {Key? key,
      Duration period = const Duration(milliseconds: 1500),
      ShimmerDirection direction = ShimmerDirection.ltr,
      int loop = 0,
      bool enabled = true}) {
    return !enabled
        ? this
        : Shimmer.fromColors(
            key: key,
            baseColor: context.xtColors().blackWhiteA8,
            highlightColor: context.xtColors().inputBackground,
            period: period,
            direction: direction,
            loop: loop,
            enabled: enabled,
            child: intoContainer(color: context.xtColors().backgroundPrimary));
  }

  /// 包裹到 PreferredSize
  PreferredSize intoPreferredSize({Key? key, required Size preferredSize}) {
    return PreferredSize(key: key, preferredSize: preferredSize, child: this);
  }
}

extension WidgetListExt on List<Widget> {
  /// 包裹到 Row
  Row intoRow(
      {Key? key,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      TextDirection? textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      TextBaseline? textBaseline}) {
    return Row(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: this);
  }

  /// 包裹到 Column
  Column intoColumn(
      {Key? key,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      TextDirection? textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      TextBaseline? textBaseline}) {
    return Column(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: this);
  }

  /// 包裹到 Stack
  Stack intoStack(
      {Key? key,
      AlignmentGeometry alignment = AlignmentDirectional.topStart,
      TextDirection? textDirection,
      StackFit fit = StackFit.loose,
      Clip clipBehavior = Clip.hardEdge}) {
    return Stack(
        key: key,
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
        children: this);
  }
}
