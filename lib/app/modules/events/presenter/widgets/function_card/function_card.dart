import 'package:flutter/material.dart';

class FunctionCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  final IconData? icon;

  const FunctionCard({
    Key? key,
    this.title,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 110,
        height: 110,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.transparent),
                color: const Color(0xff4c0b8e),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(icon, size: 40),
                    Text("$title"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
