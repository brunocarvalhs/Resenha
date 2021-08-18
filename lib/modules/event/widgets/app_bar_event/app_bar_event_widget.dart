import 'package:flutter/material.dart';
import 'package:resenha/shared/themes/app_dimensions.dart';

class AppBarEventWidget extends PreferredSize {
  final String? title;
  final VoidCallback? routerBack;
  final IconData? icon;
  final VoidCallback? onTap;

  AppBarEventWidget({
    Key? key,
    this.icon,
    this.title,
    this.onTap,
    required this.routerBack,
  }) : super(
          preferredSize: Size.fromHeight(152),
          child: Container(
            height: 152,
            color: Colors.transparent,
            child: Center(
              child: ListTile(
                leading: IconButton(
                  onPressed: routerBack,
                  icon: Icon(
                    Icons.arrow_back,
                    size: AppDimensions.sizeIcon,
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  onPressed: onTap,
                  icon: Icon(
                    icon,
                    size: AppDimensions.sizeIcon,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
}
