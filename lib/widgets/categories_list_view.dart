import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/mms.png", categoryName: "Business"),
    CategoryModel(
        image: "assets/entertaiment.avif", categoryName: "Entertainment"),
    CategoryModel(image: "assets/health.avif", categoryName: "Health"),
    CategoryModel(image: "assets/science.avif", categoryName: "Science"),
    CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
    CategoryModel(image: "assets/sports.avif", categoryName: "Sports"),
    CategoryModel(image: "assets/general.avif", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
