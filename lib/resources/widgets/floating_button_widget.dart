import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final double width;
  final double height;

  const FloatingButtonWidget({
    Key? key,
    required this.icon,
    required this.onTap,
    this.width = 38,
    this.height = 38,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black.withOpacity(0.1),
      ),
      child: IconButton(
        icon: new Icon(this.icon),
        enableFeedback: false,
        splashRadius: 10,
        onPressed: onTap,
      ),
    );
  }
}
