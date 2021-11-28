import 'package:flutter/material.dart';

class DateTextField extends StatelessWidget {
  final Function() onTap;
  final String? day;
  final String? mount;

  const DateTextField({
    Key? key,
    required this.onTap,
    this.day = "",
    this.mount = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Dia e mês",
          style: TextStyle(
            color: Color(0xffdce2ef),
            fontSize: 18,
            fontFamily: "Rajdhani",
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff4c0b8d),
                ),
                child: Center(
                  child: Text("$day"),
                ),
                // child: TextField(
                //   controller: day,
                //   keyboardType: TextInputType.datetime,
                //   textAlign: TextAlign.center,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(0),
                //       borderSide: BorderSide.none,
                //     ),
                //   ),
                //   onTap: onTap,
                // ),
              ),
            ),
            const SizedBox(
              width: 20,
              child: Text(
                "/",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffabb0cc),
                  fontSize: 20,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff4c0b8d),
                ),
                child: Center(
                  child: Text("$mount"),
                ),
                // child: TextField(
                //   controller: mount,
                //   keyboardType: TextInputType.datetime,
                //   textAlign: TextAlign.center,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(0),
                //       borderSide: BorderSide.none,
                //     ),
                //   ),
                //   onTap: onTap,
                // ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
