import 'package:flutter/material.dart';
import 'package:meals_menu/models/meals_model.dart';

class InFoBackPart extends StatelessWidget {
  final meal Meal;
  InFoBackPart(this.Meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "\$ ${Meal.price}",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Card(
            child: Container(
              width: double.infinity,
              height: 100,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(
                          text: 'Tarif: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: '${Meal.deskriptions}:',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ]))),
            ),
          ),
          Text(
            'Taom Tarkibi:',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: ListView(
                children: Meal.ingridents.map((e) {
              return Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            }).toList()),
          ),
        ],
      ),
    );
  }
}
