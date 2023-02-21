import 'package:fast_meal/models/category_model.dart';
import 'package:fast_meal/widgets/HomeScreen_widget.dart';
import 'package:fast_meal/widgets/favorities.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final Function isfavorite;
  final Function islike;
  HomeScreen(this.islike, this.isfavorite);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int index_naw = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final categoriess = Provider.of<Categories>(context);
    final List<Map<String, dynamic>> Nawpage = [
      {
        'Page': HomesScreenWidget(
          categoriess: categoriess,
        ),
        'title': 'menu',
      },
      {
        'Page': Favories(widget.islike, widget.isfavorite),
        'title': 'Sevimli',
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(Nawpage[index_naw]['title']),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: (value) {
            setState(() {
              if (value == 0) {
                index_naw = 0;
              } else {
                index_naw = 1;
              }
            });
          },
          currentIndex: index_naw,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Bosh Sahifa'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Savimlilar')
          ]),
      body: Nawpage[index_naw]['Page'],
    );
  }
}
