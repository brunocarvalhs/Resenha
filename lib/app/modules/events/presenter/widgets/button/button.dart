import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  const ButtonWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 274,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffffcc00),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: const Center(
          child: Text(
            "Agendar",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff2b1148),
              fontSize: 15,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
