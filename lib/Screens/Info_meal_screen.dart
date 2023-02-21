import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meals_menu/Screens/infoMeal/Back_part.dart';
import 'package:meals_menu/Widgets/meals.dart';
import 'package:meals_menu/models/meals_model.dart';
import 'infoMeal/header_part.dart';

class InFoMeal extends StatefulWidget {
  @override
  State<InFoMeal> createState() => _InFoMealState();
}

class _InFoMealState extends State<InFoMeal> {
  bool isCarusel = false;
  @override
  Widget build(BuildContext context) {
    final Meal = ModalRoute.of(context)!.settings.arguments as meal;
    final appBar = AppBar(title: Text(Meal.title));
    final PhoneHeight = MediaQuery.of(context).size.height;
    final appbarheigt = appBar.preferredSize.height;
    final Toppaddingheight = MediaQuery.of(context).viewInsets.bottom;
    final buttonH = MediaQuery.of(context).padding.top;
    final ScreenH = PhoneHeight - appbarheigt - Toppaddingheight - buttonH;

    print(PhoneHeight);
    print(buttonH);
    print(ScreenH);
    print(appbarheigt);
    print(Toppaddingheight);

    bool isportreitFormat =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: appBar,
      body: isportreitFormat
          ? Column(
              children: [
                Container(
                  height: ScreenH * 0.45,
                  width: double.infinity,
                  child: InfoHeader(Meal),
                ),
                Expanded(
                  child: Container(
                    height: 0.6,
                    width: double.infinity,
                    child: InFoBackPart(Meal),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                  height: ScreenH * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: isCarusel
                            ? TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                    TextSpan(text: 'Taomni ko`rmoqchimisiz? '),
                                    TextSpan(
                                        text: 'Ha:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ])
                            : TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                    TextSpan(
                                        text: 'Taom haqida bilmoqchimisiz? '),
                                    TextSpan(
                                        text: 'Yuq:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ]),
                      ),
                      Switch(
                          value: isCarusel,
                          onChanged: ((value) {
                            setState(() {
                              isCarusel = value;
                            });
                          })),
                      isCarusel
                          ? Text(":Yuq",
                              style: TextStyle(fontWeight: FontWeight.bold))
                          : Text(":Ha",
                              style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                isCarusel
                    ? Container(
                        height: ScreenH * 0.9, child: InFoBackPart(Meal))
                    : Container(height: ScreenH * 0.9, child: InfoHeader(Meal)),
              ],
            ),
    );
  }
}
