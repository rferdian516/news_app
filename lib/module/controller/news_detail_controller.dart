import 'package:get/get.dart';

class NewsDetailsController extends GetxController {
  final count = 0.obs;
  String? url;
  dynamic params = Get.arguments;

  @override
  void onInit() {
    super.onInit();
    if (params != null) {
      url = params['url'];
    }
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
