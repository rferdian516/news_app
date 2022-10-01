import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/module/view/splash_screen_view.dart';

import 'module/binding/splash_screen_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: '/splash-screen',
      getPages: [
        GetPage(
          name: '/splash-screen',
          page: () => const SplashScreenView(),
          binding: SplashScreenBinding(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
    ),
  );
}
