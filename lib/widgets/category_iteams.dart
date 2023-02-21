import 'package:flutter/material.dart';
import 'package:meals_menu/models/category_model.dart';

class Categorea_iteams extends StatelessWidget {
  final Models Iteams;
  Categorea_iteams(this.Iteams);

  void GoTo_MealIteams(BuildContext context) {
    Navigator.of(context).pushNamed("Meal Iteams", arguments: Iteams);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoTo_MealIteams(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Iteams.url.startsWith('assets/')
                  ? Image.asset(
                      Iteams.url,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      Iteams.url,
                      fit: BoxFit.cover,
                    ),
            ),
            Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Iteams.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
