import 'package:flutter/material.dart';

class GenericBarWidget extends PreferredSize {
  final List<Widget>? actions;
  final Widget? title;
  final Widget? flexibleSpace;

  GenericBarWidget({
    Key? key,
    this.flexibleSpace,
    this.actions,
    this.title,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            leading: const SizedBox(),
            title: title,
            actions: actions,
            flexibleSpace: flexibleSpace,
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        );
}
