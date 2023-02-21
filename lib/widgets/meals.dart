import 'package:flutter/material.dart';
import 'package:meals_menu/models/meals_model.dart';

class meals extends StatefulWidget {
  final Function IsFavorite;
  final Function IsLike;
  final meal MealsList;
  meals(this.MealsList, this.IsFavorite, this.IsLike);

  @override
  State<meals> createState() => _mealsState();
}

class _mealsState extends State<meals> {
  void Goto_InfoMealsPage(BuildContext context) {
    Navigator.of(context).pushNamed('inmfo Meal', arguments: widget.MealsList);
  }

  void clikLike(String Id) {
    if (widget.IsLike(Id)) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Sevimli o`cirildi'),
        duration: const Duration(seconds: 1),
        action: SnackBarAction(
          label: "BEKOR QIL",
          onPressed: () {
            widget.IsFavorite(Id);
          },
        ),
      ));
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Goto_InfoMealsPage(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 200,
                width: double.infinity,
                child: widget.MealsList.urls[0].startsWith('assets/')
                    ? Image.asset(
                        widget.MealsList.urls[0],
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        widget.MealsList.urls[0],
                        fit: BoxFit.cover,
                      ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 40,
                  width: widget.MealsList.title.length > 10 ? 180 : 150,
                  color: Colors.black.withOpacity(0.7),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      widget.MealsList.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      clikLike(widget.MealsList.id);
                      widget.IsFavorite(widget.MealsList.id);
                    },
                    icon: widget.IsLike(widget.MealsList.id)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_outline,
                            color: Colors.grey,
                          ),
                  ),
                  Text(
                    " ${widget.MealsList.preparedTimes}",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Text(
                    '\$${widget.MealsList.price}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
