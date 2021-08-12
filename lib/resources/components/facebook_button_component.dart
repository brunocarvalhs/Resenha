import 'package:flutter/material.dart';
import 'package:resenha/core/app_images.dart';

class FacebookLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const FacebookLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: Color(0xFF3452A7),
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(
              BorderSide(
                color: Color(0xFF3452A7),
              ),
            )),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: Color(0xFFE3E3E3),
                    )
                  ],
                )),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Facebook",
                    style: TextStyle(
                      color: Color(0xFFDDE3F0),
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
