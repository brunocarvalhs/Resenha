import 'package:flutter/material.dart';

class TextFieldDefault extends StatelessWidget {
  final String hint;
  final void Function(String) onChanged;
  const TextFieldDefault({
    Key? key,
    required this.hint,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hint,
          style: const TextStyle(
            color: Color(0xffdce2ef),
            fontSize: 18,
            fontFamily: "Rajdhani",
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff4c0b8d),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (value) => onChanged(value),
          ),
        )
      ],
    );
  }
}
