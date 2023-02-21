import 'package:flutter/material.dart';
import 'package:meals_menu/Screens/SideBar.dart';
import 'package:meals_menu/models/meals_model.dart';

class CategoriesPage extends StatelessWidget {
  final List<meal> Meallist;
  final Function DeleteMeal;

  CategoriesPage(this.Meallist, this.DeleteMeal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategoriyalar'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed('AddNewMealPage'),
              icon: Icon(
                Icons.addchart_outlined,
                size: 25,
              ))
        ],
      ),
      drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.68,
          child: SideBarScreen()),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Card(
            child: Dismissible(
              key: ValueKey('${Meallist[index].id}'),
              onDismissed: (direction) => DeleteMeal(Meallist[index].id),
              background: Container(
                padding: const EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                color: Colors.grey,
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                ),
              ),
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(Meallist[index].urls[1]),
                  ),
                  title: Text(
                    Meallist[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "${Meallist[index].preparedTimes} min",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: Text(
                    "\$${Meallist[index].price}",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  )),
            ),
          );
        }),
        itemCount: Meallist.length,
      ),
    );
  }
}
