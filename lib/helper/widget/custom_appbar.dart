import 'package:flutter/material.dart';
import 'package:news_app/helper/style/style_color.dart';
import 'package:news_app/helper/style/style_text.dart';

AppBar customAppbar(
    bool isbackTrue, String title, Function()? onTapBack, String image) {
  return AppBar(
      title: Text(title, style: heading6, textAlign: TextAlign.center),
      leading: Visibility(
        visible: isbackTrue,
        child: InkWell(
            onTap: onTapBack,
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                size: 20, color: CustomColor.neutralB40)),
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 16, 10),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.network(
              image,
              height: 30,
              width: 30,
            ),
          ),
        )
      ],
      bottomOpacity: 0.0,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: CustomColor.primary500);
}
