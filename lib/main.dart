import 'package:flutter/material.dart';
import './routers/routers.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // get使用的源头
      debugShowCheckedModeBanner: false,
      title: '状态管理2',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          )),
      initialRoute: "/",
      // onGenerateRoute: onGenerateRoute,
      defaultTransition: Transition.rightToLeft, // 此为ios效果，默认统一动画效果
      getPages: AppPage.routes,
    );
  }
}
