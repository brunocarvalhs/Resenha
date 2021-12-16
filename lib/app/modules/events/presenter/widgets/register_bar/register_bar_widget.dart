import 'package:flutter/material.dart';

class GenericBarWidget extends StatelessWidget {
  final List<Widget>? actions;
  final Widget? title;
  final Widget? flexibleSpace;

  const GenericBarWidget({
    Key? key,
    this.flexibleSpace,
    this.actions,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      title: title,
      actions: actions,
      flexibleSpace: flexibleSpace,
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
