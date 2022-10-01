import 'package:flutter/material.dart';
import 'package:news_app/helper/style/style_color.dart';
import 'package:news_app/helper/style/style_text.dart';

TextFormField customTextField(
    TextEditingController controller, Function()? func) {
  return TextFormField(
    style: bodySmallRegulerGray500,
    controller: controller,
    onEditingComplete: func,
    decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
          color: CustomColor.black300,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: CustomColor.black300),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: CustomColor.black300),
            borderRadius: BorderRadius.circular(4)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintText: "Search articles...",
        hintStyle: bodySmallRegulerGray200,
        counterStyle: captionSmallReguler),
  );
}
