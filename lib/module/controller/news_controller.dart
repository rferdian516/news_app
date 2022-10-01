import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/helper/utils/api_service_util.dart';
import 'package:news_app/module/model/articles_model.dart';
import 'package:news_app/module/view/news_details_view.dart';

class NewsController extends GetxController {
  TextEditingController searchController = TextEditingController();
  final count = 0.obs;
  String? category;
  dynamic params = Get.arguments;
  List<ArticlesModel> listNews = [];

  getNewsList(String category) {
    ApiService.getData("top-headlines?country=us&category=$category")
        .then((value) {
      try {
        var data = value['articles'] as List;
        listNews = data.map((e) => ArticlesModel.fromMap(e)).toList();
        update();
      } catch (e) {
        debugPrint("$e");
      }
    });
  }

  getSearchNews(String key) {
    ApiService.getData(
            "top-headlines?country=us&category=${params['category']}&q=$key")
        .then((value) {
      try {
        var data = value['articles'] as List;
        listNews = data.map((e) => ArticlesModel.fromMap(e)).toList();
        update();
      } catch (e) {
        debugPrint("$e");
      }
    });
  }

  goToDetails(String url) {
    Get.to(const NewsDetailsView(), arguments: {"url": url});
  }

  @override
  void onInit() {
    super.onInit();
    if (params != null) {
      debugPrint("selected category = ${params['category']}");
      getNewsList("${params['category']}");
      category = params['category'] + " News";
    }
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
