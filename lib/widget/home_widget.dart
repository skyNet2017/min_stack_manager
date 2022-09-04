import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_stack_manager/manager/manager.dart';
import 'package:mix_stack_manager/manager/router_mapper.dart';
import 'package:mix_stack_manager/router/RouterManager.dart';

import '../translations/HomeMsgs.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var index = Get.arguments;
    print("index = $index");
    if (index == null) {
      index = 1;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("HomeWidget"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text("这是第$index个HomeWidget界面"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(FlutterMapper.ROUTER_HOME,
                      arguments: index + 1, preventDuplicates: false);
                },
                child: Text("我可以打开我自己")),
            ElevatedButton(
                onPressed: () {
                  RouterHelper.openNative(route: NativeMapper.NATIVE_VIEW);
                },
                child: Text("也可以打开Native的Activity")),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title:"所有路由表pages",
                      content: Text(AppRouterCenter.share.installRouters().toString())
                  );
                },
                child: Text("查看所有路由表pages")),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title:"所有翻译",
                      content: Text(MsgCenter.share.collectTransEN().toString())
                  );
                },
                child: Text("查看所有翻译")),
          ],
        ),
      ),
    );
  }
}
