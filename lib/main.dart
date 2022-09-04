import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_stack_manager/manager/router_mapper.dart';
import 'package:mix_stack_manager/widget/detail_widget.dart';
import 'package:mix_stack_manager/widget/home_widget.dart';

import 'manager/manager.dart';
import 'router/RouterManager.dart';

void main() {
  var getApp = GetMaterialApp(
    initialRoute: FlutterMapper.ROUTER_HOST,
    getPages: AppRouterCenter.share.installRouters(),
    navigatorObservers: [RouteNavigatorObserver()],
  );

  RouterHelper.registerApp();
  runApp(getApp);
}

class HostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
