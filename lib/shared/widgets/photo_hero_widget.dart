import 'package:flutter/material.dart';

class PhotoHeroWidget extends StatelessWidget {
  final String photo;
  final VoidCallback? onTap;
  final double width;
  final double borderRadius;

  PhotoHeroWidget({
    Key? key,
    required this.photo,
    required this.width,
    this.onTap,
    this.borderRadius = 0
  }) : super(key: key);

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(borderRadius),
                image: DecorationImage(
                  image: NetworkImage(photo),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
