import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:lottie/lottie.dart';
import 'package:suixin_app/ai/common/context_extension.dart';

import '../../common/toast.dart';
import 'ai_devices.dart';
import 'ai_home.dart';
import 'ai_mine.dart';

/// APP 首页TAB
class XTMainPage extends StatefulWidget {
  const XTMainPage({super.key});

  @override
  State<XTMainPage> createState() => _XTMainPageState();
}

class _XTMainPageState extends State<XTMainPage>
    with SingleTickerProviderStateMixin, LifecycleAware, LifecycleMixin {
  int _pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
    eventListener();
  }

  @override
  Widget build(BuildContext context) {
    return _getMainTab();
  }

  Widget _getMainTab() {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: PageViewLifecycleWrapper(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  Center(child: AiHomeTabPage()),
                  Center(child: AiDevicesTabPage()),
                  Center(child: AiMineTabPage()),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1,
            color: context.xtColors().inputBackground,
          ),
          BottomNavigationBar(
            items: [
              _buildNavigationBottomBarItem(context,
                  iconSvgPath: "assets/icons/main_tab_home.svg",
                  activeLottieAsset: 'assets/json/main_home_icon_lottie.json',
                  label: "首页"),
              _buildNavigationBottomBarItem(context,
                  iconSvgPath: "assets/icons/main_tab_trade.svg",
                  activeLottieAsset: 'assets/json/main_tab_trade_lottie.json',
                  label: "设备"),
              _buildNavigationBottomBarItem(context,
                  iconSvgPath: "assets/icons/main_tab_wallet.svg",
                  activeLottieAsset: 'assets/json/main_tab_wallet_lottie.json',
                  label: "我的"),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _pageIndex,
            onTap: (int i) {
              _selectTab(i);
            },
          ),
        ],
      ),
    );
  }

  void _selectTab(int i) {
    setState(() {
      _pageIndex = i;
    });
    _pageController.jumpToPage(i);
  }

  void eventListener() {}

  BottomNavigationBarItem _buildNavigationBottomBarItem(BuildContext context,
      {required String iconSvgPath,
      required String activeLottieAsset,
      required label}) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: SvgPicture.asset(
            iconSvgPath,
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
                context.xtColors().blackWhite, BlendMode.srcATop),
          ),
        ),
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: SizedBox(
            width: 20,
            height: 20,
            child: Lottie.asset(activeLottieAsset, repeat: false),
          ),
        ),
        label: label);
  }

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    switch (event) {
      case LifecycleEvent.visible:
        break;
      default:
    }
  }
}
