import 'package:fast_meal/models/category_model.dart';
import 'package:flutter/material.dart';

class HomesScreenWidget extends StatelessWidget {
  const HomesScreenWidget({
    Key? key,
    required this.categoriess,
  }) : super(key: key);

  final Categories categoriess;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: categoriess.Categorylists.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2),
        itemBuilder: ((context, index) {
          final category = categoriess.Categorylists[index];
          return InkWell(
            onTap: () => Navigator.of(context)
                .pushNamed('CategoryMealsScreen', arguments: category),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GridTile(
                  child: InkWell(
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        category.url,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.68),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, top: 8),
                        child: Text(
                          category.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          );
        }));
  }
}
