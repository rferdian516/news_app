import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/helper/constant/const_img.dart';
import 'package:news_app/helper/widget/custom_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../controller/news_detail_controller.dart';

class NewsDetailsView extends GetView<NewsDetailsController> {
  const NewsDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsDetailsController>(
        init: NewsDetailsController(),
        builder: (controller) {
          return Scaffold(
            appBar: customAppbar(
                true, "Article Detail", () => Get.back(), ConstantImage.imgUrl),
            body: WebView(
              initialUrl: controller.url,
            ),
          );
        });
  }
}
