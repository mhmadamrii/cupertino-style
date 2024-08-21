import 'package:cupertino_style/models/category.dart';
import 'package:cupertino_style/services/category_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade100,
      child: Row(
        children: [
          Image.network(
            category.imageUrl,
            fit: BoxFit.cover,
          ),
          Text(
            category.name,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  createListOfCategories() {
    List<Category> categoryList = CategoryService.getCategories();
    return categoryList
        .map(
          (Category category) => createCategory(category),
        )
        .toList();
  }

  Widget createGrid() {
    return Container(
      height: 500,
      child: GridView.count(
        crossAxisCount: 2,
        children: createListOfCategories(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          createGrid(),
          const Text(
            "Made For You",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
