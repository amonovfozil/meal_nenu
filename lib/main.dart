import 'package:flutter/material.dart';
import 'package:meals_menu/Screens/Categories_page.dart';
import 'package:meals_menu/Screens/Info_meal_screen.dart';
import 'package:meals_menu/Screens/Meal_iteams.dart';
import 'package:meals_menu/Screens/Main_Menu.dart';
import 'package:meals_menu/Screens/addMeal_page.dart';
import 'package:meals_menu/Widgets/meals.dart';
import 'package:meals_menu/models/meals_model.dart';
import 'Screens/Home_Screens.dart';
import 'models/category_model.dart';
import 'Screens/Main_Menu.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Categories category = Categories();

  Meals Mealslist = Meals();
  bool? islike(MealId) {
    return Mealslist.Favorite.any((element) => element.id == MealId);
  }

  void isfavorite(String MealId) {
    setState(() {
      Mealslist.isfavorite(MealId);
    });
  }

  void AddNewMeal(String title, String descriptions, List<String> Ingridents,
      List<String> Url, double price, double Time, String CaId) {
    setState(() {
      Mealslist.AddNewMeal(
          title, descriptions, Ingridents, Url, price, Time, CaId);
    });
  }

  void DeleteMeal(MealID) {
    setState(() {
      Mealslist.list.removeWhere((element) => element.id == MealID);
      Mealslist.Favorite.removeWhere((element) => element.id == MealID);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) =>
            mainMenu(category.Categorylists, Mealslist, isfavorite, islike),
        "CategoriesPage": (context) =>
            CategoriesPage(Mealslist.list, DeleteMeal),
        "AddNewMealPage": ((context) =>
            AddMealPage(category.Categorylists, AddNewMeal)),
        "Meal Iteams": (context) =>
            MealIteams(Mealslist.list, isfavorite, islike),
        "inmfo Meal": (context) => InFoMeal(),
      },
    );
  }
}
