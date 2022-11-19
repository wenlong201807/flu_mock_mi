import 'package:get/get.dart';
import '../pages/tabs.dart';
import '../pages/shop.dart';
import '../pages/user/login.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';
import '../middlewares/shopMiddleware.dart';

class AppPage {
  static final routes = [
    GetPage(name: "/", page: () => const Tabs()),
    GetPage(name: "/shop", page: () => const ShopPage(), middlewares: [
      // 路由中间件配置
      ShopMiddleWare()
    ]),
    GetPage(name: "/login", page: () => const LoginPage()),
    GetPage(
        name: "/registerFirst",
        page: () => const RegisterFirstPage(),
        transition: Transition.fade), // 单独配置动画效果
    GetPage(name: "/registerSecond", page: () => const RegisterSecondPage()),
    GetPage(name: "/registerThird", page: () => const RegisterThirdPage()),
  ];
}
