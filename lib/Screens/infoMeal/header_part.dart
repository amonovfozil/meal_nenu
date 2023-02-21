import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meals_menu/models/meals_model.dart';

class InfoHeader extends StatefulWidget {
  final meal Meal;
  InfoHeader(this.Meal);
  @override
  State<InfoHeader> createState() => _InfoHeaderState();
}

class _InfoHeaderState extends State<InfoHeader> {
  int PageIndex = 0;

  bool isCarusel = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(children: [
       
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CarouselSlider(
            items: widget.Meal.urls.map((e) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.hardEdge,
                  width: MediaQuery.of(context).size.width,
                  child: e.startsWith('assets/')
                      ? Image.asset(
                          e,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          e,
                          fit: BoxFit.cover,
                        ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              autoPlayCurve: Curves.easeInOutQuart,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              viewportFraction: 0.7,
              height: 250,
              autoPlay: true,
              onPageChanged: (index, reason) {
                PageIndex = index;
                setState(() {
                  PageIndex = index;
                });
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.Meal.urls.map((e) {
            int imageindex = widget.Meal.urls.indexOf(e);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: PageIndex == imageindex
                  ? Icon(
                      Icons.circle,
                      size: 13,
                    )
                  : Icon(
                      Icons.circle_outlined,
                      size: 10,
                    ),
            );
          }).toList(),
        )
      ]),
    );
  }
}
