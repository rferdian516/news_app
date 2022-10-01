import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/module/view/news_view.dart';

class CategoryController extends GetxController {
  final count = 0.obs;
  List<String> listCategory = [
    "Business",
    "Entertainment",
    "General",
    "Health",
    "Science",
    "Sports",
    "Technology"
  ];

  goToNews(String category) {
    Get.to(const NewsView(), arguments: {"category": category});
    debugPrint(category);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
