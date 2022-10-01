import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String? imageUri;
  String defaultAsset;
  CustomImage({
    Key? key,
    this.imageUri,
    this.defaultAsset = "assets/images/news.jpg",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      image: imageUri ?? "-",
      placeholder: defaultAsset,
      fit: BoxFit.cover,
      imageErrorBuilder: (context, object, stackTrace) {
        return Image.asset(defaultAsset);
      },
    );
  }
}
