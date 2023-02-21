import 'package:fast_meal/models/category_model.dart';
import 'package:fast_meal/models/meals_model.dart';
import 'package:fast_meal/screens/Category_meal_Screen.dart';
import 'package:fast_meal/screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Meals Mealslist = Meals();
    bool? islike(MealId) {
      return Mealslist.Favorite.any((element) => element.id == MealId);
    }

    void isfavorite(String MealId) {
      setState(() {
        Mealslist.isfavorite(MealId);
        print(Mealslist.Favorite.length);
      });
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => Categories()),
        ),
        ChangeNotifierProvider(
          create: ((context) => Meals()),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(islike, isfavorite),
        routes: {
          'CategoryMealsScreen': (context) =>
              CategoryMealsScreen(islike, isfavorite),
        },
      ),
    );
  }
}
