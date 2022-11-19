import 'package:flutter/material.dart';
import 'package:get/get.dart'; // 使用getx 必须引入包

// import '../user/registerFirst.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/login');  // 原生跳转路由方式
                Get.toNamed("/login"); // 路由跳转
              },
              child: const Text("登录")),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/registerFirst");
                // Get.off(const RegisterFirstPage()); // 跳转 进入子页面之后，无返回按钮显示
              },
              child: const Text("注册")),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/shop", arguments: {"id": 3456});
              },
              child: const Text("shop路由传值"))
        ],
      ),
    );
  }
}
