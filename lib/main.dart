import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:toast/toast.dart';

import 'package:suixin_app/api/beans/message_model.dart';
import 'package:suixin_app/api/biz_error.dart';
import 'package:suixin_app/api/http_apis.dart';
import 'package:suixin_app/common/cookie_manager.dart';
import 'package:suixin_app/routers.dart';
import 'package:suixin_app/typography.dart';
import 'package:suixin_app/widgets/loading.dart';

import 'ai/common/logger.dart';
import 'ai/home/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (errorDetails) {
    logger.e(errorDetails);
  };
  runApp(const ProviderScope(child: MyAppAI()));
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with LifecycleAware, LifecycleMixin {
  List<Role> roles = [];
  int _stamina = 0;

  @override
  void initState() {
    super.initState();
    showLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(""),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    constraints:
                        BoxConstraints(minWidth: 0, maxWidth: double.infinity),
                    padding:
                        EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.yellow,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.sunny,
                          color: Colors.orange,
                        ),
                        Text(
                          "$_stamina 体力",
                          style: const TextStyle(
                              color: Colors.orange, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('分享得体力'),
              onTap: () {
                AppRouters.pushToShare(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 72, left: 12, right: 12),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          CircleAvatar(
            child: SizedBox(
                width: 160,
                child: Image.asset(
                  "assets/images/app_logo.png",
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(height: 12),
          const Text("随心 AI",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 32),
          Expanded(
              child: ListView.builder(
            itemCount: roles.length,
            itemBuilder: (context, index) {
              return RoleItemWidget(
                id: roles[index].id ?? 0,
                avatar: roles[index].pic ?? "",
                name: roles[index].name ?? "",
                desc: roles[index].chat?.content ?? "",
              );
            },
          ))
        ]),
      ),
    );
  }

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    if (event == LifecycleEvent.visible) {
      if (UserManager().isLogin()) {
        HttpApis().getHomeRoles().then((value) {
          setState(() {
            roles = value?.roles ?? [];
            _stamina = value?.stamina ?? 0;
          });
          dismissLoading();
        }).onError((error, stackTrace) {
          dismissLoading();
          if (error is XTBizError && error.code == "401") {
            AppRouters.pushToLogin(context);
          }
        });
      } else {
        Future.delayed(Duration(seconds: 1000)).then((value) {
          AppRouters.pushToLogin(context);
          dismissLoading();
        });
      }
    }
  }
}

class RoleItemWidget extends StatelessWidget {
  final String name;
  final int id;
  final String avatar;
  final String desc;
  const RoleItemWidget(
      {super.key,
      required this.name,
      required this.avatar,
      required this.desc,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!UserManager().isLogin()) {
          context.push("/mobile-login");
        } else {
          AppRouters.pushToChat(context,
              roleId: id.toString(), roleName: name, rolePic: avatar);
        }
      },
      child: Card(
        elevation: 0.3,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Row(
            children: [
              CircleAvatar(
                  child: Image.network(
                avatar,
                fit: BoxFit.fill,
              )),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: AppTypography.h2(),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        desc,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.h3(),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
