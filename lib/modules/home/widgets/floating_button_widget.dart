import 'package:flutter/material.dart';
import 'package:resenha/shared/themes/app_colors.dart';

class FloatingButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final double width;
  final double height;

  const FloatingButtonWidget({
    Key? key,
    required this.icon,
    required this.onTap,
    this.width = 58,
    this.height = 58,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.yellow,
        ),
        child: Center(
          child: Icon(
            icon,
            color: AppColors.purple,
            size: 30,
          ),
        ),
      ),
    );
  }
}
