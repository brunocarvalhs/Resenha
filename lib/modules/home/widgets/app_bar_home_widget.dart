import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resenha/shared/models/user_model.dart';
import 'package:resenha/shared/themes/app_dimensions.dart';
import 'package:resenha/shared/themes/app_text_styles.dart';
import 'package:resenha/shared/widgets/photo_hero/photo_hero_widget.dart';

class AppBarHomeWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback? routerProfile;

  AppBarHomeWidget({Key? key, required this.user, this.routerProfile})
      : super(
          preferredSize: Size.fromHeight(152),
          child: Container(
            height: 152,
            color: Colors.transparent,
            child: Center(
              child: ListTile(
                leading: InkWell(
                  onTap: routerProfile,
                  child: PhotoHeroWidget(
                    photo: user.photoURL!,
                    width: AppDimensions.avatarAppBar,
                    height: AppDimensions.avatarAppBar,
                    borderRadius: AppDimensions.borderRadius,
                  ),
                ),
                title: Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: user.name.split(" ")[0],
                        style: AppTextStyles.titleBold,
                      )
                    ],
                  ),
                ),
                subtitle: Text(
                  "Hoje é dia de festejar",
                  style: AppTextStyles.subtitle
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: AppDimensions.sizeIcon,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
}
