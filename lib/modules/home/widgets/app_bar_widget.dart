import 'package:flutter/material.dart';
import 'package:resenha/shared/models/user_model.dart';
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
                title: Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.text1,
                    children: [
                      TextSpan(
                        text: user.name.split(" ")[0],
                        style: AppTextStyles.text1,
                      )
                    ],
                  ),
                ),
                subtitle: Text(
                  "Mantenha suas contas em dia",
                  style: AppTextStyles.text1,
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(user.photoURL!),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
}
