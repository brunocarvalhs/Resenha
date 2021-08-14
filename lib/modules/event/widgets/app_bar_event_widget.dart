import 'package:flutter/material.dart';

class AppBarEventWidget extends PreferredSize {
  final String? title;
  final VoidCallback? routerBack;
  final Widget? trailing;

  AppBarEventWidget({
    Key? key,
    this.trailing,
    this.title,
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
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                trailing: trailing,
              ),
            ),
          ),
        );
}
