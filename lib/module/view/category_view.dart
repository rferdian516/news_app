import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/helper/constant/const_img.dart';
import 'package:news_app/helper/widget/custom_appbar.dart';
import 'package:news_app/helper/widget/custom_box.dart';
import 'package:news_app/module/controller/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
        init: CategoryController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: customAppbar(
                false, "News Category", null, ConstantImage.imgUrl),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2 / 1.9,
                    crossAxisSpacing: 30.0,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.listCategory.length,
                  itemBuilder: (context, i) {
                    return customBox(
                        () => controller.goToNews(controller.listCategory[i]),
                        ConstantImage.imgCtg,
                        controller.listCategory[i]);
                  }),
            ),
          );
        });
  }
}
