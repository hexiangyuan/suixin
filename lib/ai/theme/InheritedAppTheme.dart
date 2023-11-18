import 'package:flutter/material.dart';
import '../theme/AppThemeData.dart';
import '../theme/Colors.dart';

class InheritedAppThemeWidget extends InheritedWidget {
  AppThemeData theme;

  final Function changeTheme;

  final Widget child;

  InheritedAppThemeWidget({
    Key? key,
    required this.theme,
    required this.child,
    required this.changeTheme,
  }) : super(key: key, child: child);

  void updateTheme(AppThemeData theme) {
    changeTheme(theme);
  }

  @override
  bool updateShouldNotify(InheritedAppThemeWidget oldWidget) {
    return oldWidget.theme != theme;
  }
}

class AppTheme extends StatefulWidget {
  final Widget child;
  AppThemeData theme;

  AppTheme({Key? key, required this.child, required this.theme})
      : super(key: key);

  @override
  State<AppTheme> createState() => _AppThemeWidgetState();

  static AppThemeData of(BuildContext context) {
    final InheritedAppThemeWidget? inheritedAppThemeWidget =
        context.dependOnInheritedWidgetOfExactType<InheritedAppThemeWidget>();
    return inheritedAppThemeWidget?.theme ?? AppThemeData.light();
  }

  static InheritedAppThemeWidget? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<InheritedAppThemeWidget>();
  }
}

class _AppThemeWidgetState extends State<AppTheme> {
  void _updateTheme(AppThemeData theme) {
    widget.theme = theme;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InheritedAppThemeWidget(
      changeTheme: _updateTheme,
      theme: widget.theme,
      child: widget.child,
    );
  }
}

extension AppThemeExt on BuildContext {
  XTColors appColors() {
    return AppTheme.of(this).colors;
  }
}
