import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_menu/Screens/Home_Screens.dart';
import 'package:meals_menu/Screens/SideBar.dart';
import 'package:meals_menu/Screens/favorite_page.dart';
import 'package:meals_menu/models/category_model.dart';
import 'package:meals_menu/models/meals_model.dart';

class mainMenu extends StatefulWidget {
  final List<Models> Categoryy;
  final Function IsLike;
  final Function Isfavorite;
  final Meals Meallist;

  mainMenu(this.Categoryy, this.Meallist, this.Isfavorite, this.IsLike);

  @override
  State<mainMenu> createState() => _mainMenuState();
}

class _mainMenuState extends State<mainMenu> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> Page = [
      {"title": 'Foods Menu', "sahifa": HomeScreens(widget.Categoryy)},
      {
        "title": 'Fovorities',
        "sahifa": FavoriteScreen(
          widget.Meallist.Favorite,
          widget.Isfavorite,
          widget.IsLike,
        )
      }
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Main Menu',
          ),
        ),
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.68,
          child: SideBarScreen(),
        ),
        body: Page[indexPage]['sahifa'],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: ((value) {
            setState(() {
              indexPage = value;
            });
          }),
          currentIndex: indexPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Sevimlilar")
          ],
        ));
  }
}
