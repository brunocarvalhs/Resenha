import 'package:flutter/material.dart';

class CategoryTileWidget extends StatefulWidget {
  final String? value;
  final String? image;
  final String? name;
  final Function(bool) onTap;
  final bool isCheckeable;

  const CategoryTileWidget({
    Key? key,
    this.image,
    this.name,
    this.value,
    required this.onTap,
    this.isCheckeable = false
  }) : super(key: key);

  @override
  _CategoryTileWidgetState createState() => _CategoryTileWidgetState();
}

class _CategoryTileWidgetState extends State<CategoryTileWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap(widget.isCheckeable),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFF4C0B8D),
          border: Border.all(
            color: widget.isCheckeable ? Color(0xFFFFCC00) : Color(0xFFFFCC00),
            width: 1
          )
        ),
      ),
    );
  }
}
