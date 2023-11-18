import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:suixin_app/ai/home/ai_main.dart';
import 'package:suixin_app/main.dart';

import '../theme/AppThemeData.dart';
import '../theme/InheritedAppTheme.dart';
import 'ai_devices.dart';

class RouterManifest {
  static const mainPage = "/";
  static const deviceInfoPage = "/device-info";
}

/// The route configuration.
final GoRouter routers = GoRouter(observers: [
  defaultLifecycleObserver
], routes: <RouteBase>[
  GoRoute(
    path: RouterManifest.mainPage,
    builder: (context, state) {
      return const XTMainPage();
    },
  ),
  GoRoute(
    path: RouterManifest.deviceInfoPage,
    builder: (context, state) {
      return const AiDevicesManagerPage();
    },
  ),
  GoRoute(
    path: RouterManifest.deviceInfoPage,
    builder: (context, state) {
      return const AiDevicesManagerPage();
    },
  ),
]);

class MyAppAI extends ConsumerWidget {
  const MyAppAI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTheme(theme: AppThemeData.light(), child: XTApp());
  }
}

class XTApp extends ConsumerStatefulWidget {
  const XTApp({Key? key}) : super(key: key);

  @override
  ConsumerState<XTApp> createState() => _XTAppState();
}

class _XTAppState extends ConsumerState<XTApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  // 是否是红涨绿跌
  var themeRedGreenUpDownColor = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routers,
      key: _navigatorKey,
      darkTheme: XTThemeData.dark,
      themeMode: ThemeMode.light,
      theme: XTThemeData.light,
      builder: EasyLoading.init(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
