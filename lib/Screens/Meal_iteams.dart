import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_menu/Widgets/meals.dart';
import 'package:meals_menu/models/category_model.dart';
import 'package:meals_menu/models/meals_model.dart';

class MealIteams extends StatelessWidget {
  final List<meal> MealsList;
  final Function IsFavorite;
  final Function IsLike;
  MealIteams(this.MealsList, this.IsFavorite, this.IsLike);

  @override
  Widget build(BuildContext context) {
    final Category = ModalRoute.of(context)!.settings.arguments as Models;
    final MealByCategory =
        MealsList.where((meall) => meall.categoryID == Category.id).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(Category.title),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: meals(MealByCategory[index],IsFavorite, IsLike),
              ),
            );
          }),
          itemCount: MealByCategory.length,
        )
        // const Center(child: Text('hozircha taomlar mavjud emas.')),
        );
  }
}
