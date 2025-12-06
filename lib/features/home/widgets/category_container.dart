

import 'package:flutter/material.dart';
import 'package:grad_project/features/home/models/category_model.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer(
      {super.key, required this.categoryModel, required this.radius});

  final CategoryModel categoryModel;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffE1F2F8),
          radius: radius + 3,
          child: Padding(
            padding: const EdgeInsets.all(6), // 🔥 تصغير حجم الصورة
            child: Image.asset(
              categoryModel.icon,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          categoryModel.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Tajawal",
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
