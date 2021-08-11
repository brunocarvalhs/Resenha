import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final double width;
  final double height;

  ButtonComponent({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
    this.width = 38,
    this.height = 38,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
