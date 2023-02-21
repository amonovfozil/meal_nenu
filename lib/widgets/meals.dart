import 'package:fast_meal/models/meals_model.dart';
import 'package:flutter/material.dart';

class mealls extends StatelessWidget {
  const mealls({
    Key? key,
    required this.Meal,
    required this.isfavorit,
    required this.islike,
  }) : super(key: key);

  final meal Meal;
  final Function isfavorit;
  final Function islike;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              Meal.urls[0],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 70,
            right: 0,
            child: Container(
              height: 35,
              width: 135,
              color: Colors.black.withOpacity(0.8),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: Text(
                  Meal.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
      footer: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              onPressed: () {
                isfavorit(Meal.id);
                
              },
              icon: islike(Meal.id)
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_outline,
                      color: Colors.black.withOpacity(0.65),
                    ),
            ),
            Text(
              '${Meal.preparedTimes.toStringAsFixed(0)}min',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            Text(
              '\$${Meal.price.toStringAsFixed(0)}',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
