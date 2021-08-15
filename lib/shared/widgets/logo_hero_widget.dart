import 'package:flutter/material.dart';

class LogoHeroWidget extends StatelessWidget {
  final String photo;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  LogoHeroWidget({
    Key? key,
    required this.photo,
    this.width,
    this.height,
    this.padding,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Hero(
      tag: photo,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        child: Image.asset(photo),
      ),
    );
  }
}
