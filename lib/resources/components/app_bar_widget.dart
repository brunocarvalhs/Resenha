import 'package:flutter/material.dart';
import 'package:resenha/core/app_text_styles.dart';
import 'package:resenha/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  final String name;
  final IconData? icon;
  final VoidCallback? onTap;

  AppBarWidget({Key? key, required this.name, this.icon, this.onTap})
      : super(
          preferredSize: Size.fromHeight(152),
          child: Container(
            height: 152,
            color: Colors.transparent,
            child: Center(
              child: ListTile(
                title: Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.heading2,
                    children: [
                      TextSpan(
                        text: name.split(" ")[0],
                        style: AppTextStyles.heading1,
                      )
                    ],
                  ),
                ),
                // trailing:  IconButton(
                //   icon: Icon(icon),
                //   onPressed: onTap,
                // ),
              ),
            ),
          ),
        );
}
