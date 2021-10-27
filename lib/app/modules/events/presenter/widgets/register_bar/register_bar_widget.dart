import 'package:flutter/material.dart';

class GenericBarWidget extends PreferredSize {
  final Widget? trailing;
  final Widget? title;

  GenericBarWidget({Key? key, this.trailing, this.title})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(120),
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(top: 30),
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const SizedBox(),
                title: title,
                trailing: trailing,
              ),
            ),
          ),
        );
}
