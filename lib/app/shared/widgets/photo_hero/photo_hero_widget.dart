import 'package:flutter/material.dart';

class PhotoHeroWidget extends StatelessWidget {
  final String photo;
  final double width;
  final double height;
  final double borderRadius;

  PhotoHeroWidget({
    Key? key,
    required this.photo,
    required this.width,
    required this.height,
    this.borderRadius = 0,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return HeroMode(
      enabled: true,
      child: Hero(
        transitionOnUserGestures: true,
        tag: photo,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              image: NetworkImage(photo),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
