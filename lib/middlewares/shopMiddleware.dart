import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

class ShopMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print("----中间件设置，判断是否有进入shop页面权限---");
    print(route);
    return null;  //不做任何操作

    //没有权限跳转到登录页面
    // return const RouteSettings(name: "/login", arguments: {});
  }
}
