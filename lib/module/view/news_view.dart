import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/helper/constant/const_img.dart';
import 'package:news_app/helper/widget/custom_appbar.dart';
import 'package:news_app/helper/widget/custom_card.dart';
import 'package:news_app/helper/widget/cutom_text_field.dart';
import 'package:news_app/module/controller/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        init: NewsController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: customAppbar(true, "${controller.category}",
                () => Get.back(), ConstantImage.imgUrl),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: customTextField(
                          controller.searchController,
                          () => controller.getSearchNews(
                              controller.searchController.text))),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.listNews.isNotEmpty
                        ? controller.listNews.length
                        : 0,
                    itemBuilder: (context, i) {
                      return customCard(
                          () => controller
                              .goToDetails("${controller.listNews[i].url}"),
                          Get.width,
                          controller.listNews[i].title,
                          controller.listNews[i].author,
                          controller.listNews[i].publishedAt);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
