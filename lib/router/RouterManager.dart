
import 'package:get/get.dart';
import 'package:mix_stack_manager/main.dart';
import 'package:mix_stack_manager/manager/router_mapper.dart';
import 'package:mix_stack_manager/widget/detail_widget.dart';
import 'package:mix_stack_manager/widget/home_widget.dart';

class IRouterTable{
  List<GetPage> pages = [];
  List<GetPage> installRouters(){
    pages.clear();
    return pages;
  }
}

class AppRouterCenter extends IRouterTable  with DetailRouterTable,HomeRouterTable,HostRouterTable{
  AppRouterCenter._();

  static final AppRouterCenter _instance = AppRouterCenter._();

  static AppRouterCenter get share => _instance;

}

mixin HostRouterTable on IRouterTable{
  @override
  List<GetPage> installRouters() {
    List<GetPage> pages = super.installRouters();

    pages.add( GetPage(
        name: FlutterMapper.ROUTER_HOST,
        page: () => HostWidget(),
        transition: Transition.noTransition));
    return pages;
  }
}


mixin DetailRouterTable on IRouterTable{
  @override
  List<GetPage> installRouters() {
    List<GetPage> pages = super.installRouters();

    pages.add(GetPage(
        name: FlutterMapper.ROUTER_DETAIL_NO_ANIM,
        page: () => DetailWidget(),
        transition: Transition.noTransition));
    pages.add(GetPage(
        name: FlutterMapper.ROUTER_DETAIL,
        page: () => DetailWidget(),
        transition: Transition.rightToLeft));
    return pages;
  }
}

mixin HomeRouterTable on IRouterTable {
  @override
  List<GetPage> installRouters() {
    List<GetPage> pages = super.installRouters();

    pages.add( GetPage(
        name: FlutterMapper.ROUTER_HOME_NO_ANIM,
        page: () => HomeWidget(),
        transition: Transition.noTransition));
    pages.add(GetPage(
        name: FlutterMapper.ROUTER_HOME,
        page: () => HomeWidget(),
        transition: Transition.rightToLeft));

    return pages;
  }
}