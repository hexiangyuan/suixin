import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../api/http_request.dart';
import '../theme/Colors.dart';
import '../theme/InheritedAppTheme.dart';

extension ContextExtension on BuildContext {
  XTColors xtColors() {
    return AppTheme.of(this).colors;
  }

  String asset(String path, {bool noDark = false}) {
    return path;
  }

}
