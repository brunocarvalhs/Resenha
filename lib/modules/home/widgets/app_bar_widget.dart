import 'package:flutter/material.dart';
import 'package:resenha/shared/models/user_model.dart';
import 'package:resenha/shared/themes/app_colors.dart';
import 'package:resenha/shared/themes/app_text_styles.dart';

class AppBarHomeWidget extends PreferredSize {
  final UserModel user;

  AppBarHomeWidget({Key? key, required this.user})
      : super(
          preferredSize: Size.fromHeight(152),
          child: Container(
            height: 152,
            color: Colors.transparent,
            child: Center(
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      // image: DecorationImage(
                      //   image: NetworkImage(user.photoURL!),
                      // ),
                    ),
                  ),
                ),
                title: Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: user.name.split(" ")[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                subtitle: Text(
                  "Mantenha suas contas em dia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: AppColors.yellow,
                  ),
                ),
              ),
            ),
          ),
        );
}
