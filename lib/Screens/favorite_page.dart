import 'package:flutter/material.dart';
import 'package:meals_menu/Widgets/meals.dart';
import 'package:meals_menu/models/meals_model.dart';

class FavoriteScreen extends StatelessWidget {
  final Function IsLike;
  final Function IsFavorite;
  final List<meal> FavoriteMeals;
  FavoriteScreen(this.FavoriteMeals, this.IsFavorite, this.IsLike);
  @override
  Widget build(BuildContext context) {
    return FavoriteMeals.length > 0
        ? ListView.builder(
            itemBuilder: ((context, index) {
              return Card(
                  child: meals(FavoriteMeals[index], IsFavorite, IsLike));
            }),
            itemCount: FavoriteMeals.length,
          )
        : const Center(
            child: Text('Hozircha Sevimlilar ruyxati majud emas.'),
          );
  }
}
