import 'package:buzz_bites/models/article_model.dart';

import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.margin,
    required this.imageUrl,
    required this.child,
    required this.bottomBorderRadius,
    required this.topBorderRadius,
  });
  final double? height;
  final double? width;
  final double bottomBorderRadius;
  final double topBorderRadius;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bottomBorderRadius),
            bottomRight: Radius.circular(bottomBorderRadius),
            topLeft: Radius.circular(topBorderRadius),
            topRight: Radius.circular(topBorderRadius),
          ),
          image: DecorationImage(
              image: NetworkImage(Article.articles[0].imageUrl),
              fit: BoxFit.fill)),
      child: child,
    );
  }
}
