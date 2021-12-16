import 'package:flutter/material.dart';
import 'package:resenha/app/modules/events/infra/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel? selected;
  final void Function(CategoryModel) onTap;
  final CategoryModel categoryModel;

  const CategoryCard({
    Key? key,
    required this.categoryModel,
    required this.onTap,
    this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(categoryModel),
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
                border: Border.all(color: selected == categoryModel ? Colors.yellow : Colors.transparent),
                color: const Color(0xff4c0b8e),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      categoryModel.image,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                    Text(categoryModel.name),
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
