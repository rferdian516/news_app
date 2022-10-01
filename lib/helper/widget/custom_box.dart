import 'package:flutter/material.dart';
import 'package:news_app/helper/style/style_color.dart';
import 'package:news_app/helper/style/style_text.dart';

Widget customBox(Function()? onTap, String img, title) {
  return InkWell(
    onTap: onTap,
    child: Column(children: [
      Container(
          padding: EdgeInsets.all(10.0),
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
              color: CustomColor.primary500,
              borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: Image.network(img),
          )),
      const SizedBox(height: 4),
      Text(title,
          style: captionLargeRegular,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center)
    ]),
  );
}
