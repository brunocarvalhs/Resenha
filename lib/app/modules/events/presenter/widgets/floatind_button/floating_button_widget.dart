import 'package:flutter/material.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class FloatingButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String text;

  const FloatingButtonWidget({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onTap,
      icon: Icon(icon, color: ColorsThemes.purple, size: 26),
      label: Text(text),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: ColorsThemes.yellow,
      foregroundColor: ColorsThemes.purple,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
