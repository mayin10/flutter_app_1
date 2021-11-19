import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter_app_1/pages/room_manager/index.dart';
import 'package:flutter_app_1/pages/setting.dart';

import 'home/index.dart';
import 'login.dart';
import 'not_found.dart';

class Routes {
  static String home = '/';
  static String login = 'login';
  static String register = '/register';
  static String setting = '/setting';
  static String roomManage = '/roomManage';
  static String roomAdd = '/roomAdd';
  static String roomDetail = '/roomDetail/:roomId';

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return HomePage();
  });

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return LoginPage();
  });

  static Handler _settingHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return SettingPage();
  });

  static Handler _roomManageHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RoomManagerPage();
  });

  static Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFoundPage();
  });

  // 编写路由处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);

    router.define(setting, handler: _settingHanlder);
    router.define(roomManage, handler: _roomManageHanlder);
    router.notFoundHandler = _notFoundHandler;
  }
}
