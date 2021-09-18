import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';
import 'package:resenha/app/themes/texts_styles_themes.dart';

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
                  onTap: () => {},
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: Modular.get<AuthStore>().user!.photoUrl.toString(),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(Modular.get<AuthStore>().user!.photoUrl.toString()),
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
                        text: Modular.get<AuthStore>().user?.name?.split(" ")[0],
                        style: AppTextStyles.titleBold,
                      )
                    ],
                  ),
                ),
                subtitle: Text(
                  "Hoje é dia de festejar",
                  style: AppTextStyles.subtitle,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
}
