import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag(
      {super.key,
      required this.bgColor,
      required this.children,
      required this.padding,
      required this.borderRadius});

  final Color bgColor;
  final List<Widget> children;
  final EdgeInsets padding;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius), color: bgColor),
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
