import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meals_menu/Widgets/category_iteams.dart';
import 'package:meals_menu/models/category_model.dart';

class HomeScreens extends StatelessWidget {
  final List<Models> Category;
  HomeScreens(this.Category);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8),
        children: Category.map((e) => Categorea_iteams(e)).toList(),
      ),
    );
  }
}
