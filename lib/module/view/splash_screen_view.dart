import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/helper/constant/const_img.dart';
import 'package:news_app/helper/style/style_text.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: 323,
                    width: 307,
                    child: Image.asset(ConstantImage.imgAsset),
                  ),
                ),
                Text("NewsApp", style: heading3, textAlign: TextAlign.center),
              ],
            ),
          );
        });
  }
}
