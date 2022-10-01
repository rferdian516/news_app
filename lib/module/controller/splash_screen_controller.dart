import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:news_app/module/view/category_view.dart';

class SplashScreenController extends GetxController {
  // ignore: todo
  //TODO: Implement SplashScreenController

  void moveToFirstOnBoarding() async {
    Timer(const Duration(seconds: 3), () => Get.off(() => CategoryView()));
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    moveToFirstOnBoarding();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
