import 'package:flutter/material.dart';
import 'package:news_app/helper/style/style_color.dart';
import 'package:news_app/helper/style/style_text.dart';

Widget customCard(Function()? func, double width, title, author, date) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: InkWell(
        onTap: func,
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            width: width,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: CustomColor.gray50,
                border: Border.all(color: CustomColor.neutralB50),
                borderRadius: BorderRadius.circular(8)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title ?? "-", style: bodyLargeMediumGray500),
              const SizedBox(height: 36),
              Text(author ?? "-", style: captionLargePrimary600),
              Text(date ?? "-", style: captionLargeRegularGray200)
            ]))),
  );
}
