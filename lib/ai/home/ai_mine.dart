import 'package:flutter/material.dart';
import 'package:suixin_app/ai/common/context_extension.dart';
import 'package:suixin_app/ai/theme/typography.dart';
import 'package:suixin_app/ai/xt_button.dart';

class AiMineTabPage extends StatefulWidget {
  const AiMineTabPage({super.key});

  @override
  State<AiMineTabPage> createState() => _AiMineTabPageState();
}

class _AiMineTabPageState extends State<AiMineTabPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          SizedBox(
            height: 64,
            child: Row(children: [
              Text(
                "账号: 12345678",
                style: context.h1(),
              )
            ]),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "您拥有的语音包都是跟随您的账号，可在多设备上共享，请保持您的登录状态",
            style: context.h4(),
          ),
          Expanded(child: Container()),
          SquareButton("退出登录",
              backgroundColor: context.xtColors().backgroundTertiary,
              onPressed: () {})
        ],
      ),
    ));
  }
}
