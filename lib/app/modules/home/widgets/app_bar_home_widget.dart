import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/core/stores/auth_store.dart';
import 'package:resenha/app/shared/themes/app_dimensions.dart';
import 'package:resenha/app/shared/themes/app_text_styles.dart';

class AppBarHomeWidget extends PreferredSize {
  AppBarHomeWidget({Key? key})
      : super(
          preferredSize: Size.fromHeight(152),
          child: Container(
            height: 152,
            color: Colors.transparent,
            child: Center(
              child: ListTile(
                leading: InkWell(
                  onTap: () => Modular.to.navigate("/profile"),
                  child: Hero(
                    tag: Modular.get<AuthStore>().user.photoURL,
                    child: Container(
                      width: AppDimensions.avatarAppBar,
                      height: AppDimensions.avatarAppBar,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.borderRadius),
                        image: DecorationImage(
                          image: NetworkImage(Modular.get<AuthStore>().user.photoURL),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: Modular.get<AuthStore>().user.name.split(" ")[0],
                        style: AppTextStyles.titleBold,
                      )
                    ],
                  ),
                ),
                subtitle: Text("Hoje é dia de festejar",
                    style: AppTextStyles.subtitle),
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
