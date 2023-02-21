import 'package:fast_meal/models/category_model.dart';
import 'package:fast_meal/models/meals_model.dart';
import 'package:fast_meal/widgets/meals.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryMealsScreen extends StatelessWidget {
  final Function isfavorite;
  final Function islike;
  CategoryMealsScreen(this.islike, this.isfavorite);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Models;
    final mealsIteam = Provider.of<Meals>(context);
    final meals = mealsIteam.list
        .where((element) => element.categoryID == category.id)
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
          centerTitle: true,
        ),
        body: GridView.builder(
            itemCount: meals.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 270,
                childAspectRatio: 3 / 2),
            itemBuilder: ((context, index) {
              final Meal = meals[index];
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                    child: mealls(
                      Meal: Meal,
                      isfavorit: isfavorite,
                      islike: islike,
                    ),
                  ),
                ),
              );
            })));
  }
}
