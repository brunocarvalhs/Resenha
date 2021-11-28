import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final bool selected;
  final VoidCallback? onTap;
  final String? title;
  final String? image;

  const CategoryCard({
    Key? key,
    this.title,
    this.image,
    this.onTap,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: selected ? Colors.yellow : Colors.transparent),
                boxShadow: const [
                  // BoxShadow(
                  //   color: Color(0x33000000),
                  //   blurRadius: 3,
                  //   offset: Offset(0, 1),
                  // ),
                  // BoxShadow(
                  //   color: Color(0x1e000000),
                  //   blurRadius: 1,
                  //   offset: Offset(0, 2),
                  // ),
                  // BoxShadow(
                  //   color: Color(0x23000000),
                  //   blurRadius: 1,
                  //   offset: Offset(0, 1),
                  // ),
                ],
                color: const Color(0xff4c0b8e),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      "$image",
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
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
