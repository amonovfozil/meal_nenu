import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_menu/models/category_model.dart';
import 'package:meals_menu/Widgets/Add_photoUrl.dart';

class AddMealPage extends StatefulWidget {
  final List<Models> categorieslist;
  final Function AddNewMeal;
  AddMealPage(this.categorieslist, this.AddNewMeal);

  @override
  State<AddMealPage> createState() => _AddMealPageState();
}

class _AddMealPageState extends State<AddMealPage> {
  final InputTitle = TextEditingController();
  final InputDescription = TextEditingController();
  final InputIngridents = TextEditingController();
  final InputPrice = TextEditingController();
  final InputTime = TextEditingController();
  final InputUrl1 = TextEditingController();
  final InputUrl2 = TextEditingController();
  final InputUrl3 = TextEditingController();
  String? categoryID;
  Widget CreatTextFieal(String Labell, TextInputType Keyboardtype, int lines,
      TextEditingController contr) {
    return Card(
      child: TextField(
        controller: contr,
        maxLines: lines,
        keyboardType: Keyboardtype,
        decoration: InputDecoration(
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(Labell),
          ),
        ),
      ),
    );
  }

  void SaveDate() {
    String title = InputTitle.text;
    String descriptions = InputDescription.text;
    List<String> Ingridents = InputIngridents.text.split(',');
    List<String> Url = [InputUrl1.text, InputUrl2.text, InputUrl3.text];
    double price = double.parse(InputPrice.text);
    double Time = double.parse(InputTime.text);

    if (title.length != null ||
        descriptions.length != null ||
        Ingridents.isEmpty ||
        price != null ||
        Time != null ||
        Url.length != null) {
      widget.AddNewMeal(
          title, descriptions, Ingridents, Url, price, Time, categoryID);
    }
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Yangi Taomnoma'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                SaveDate();
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.save_alt_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Kategoriyani Tanlang ⬇',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DropdownButton(
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  isDense: false,
                  isExpanded: true,
                  value: categoryID,
                  items: widget.categorieslist.map((e) {
                    return DropdownMenuItem(
                      child: Text(e.title),
                      value: e.id,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      categoryID = value;
                    });
                  }),
              CreatTextFieal('Taom nomi:', TextInputType.text, 1, InputTitle),
              CreatTextFieal('Tarif:', TextInputType.text, 3, InputDescription),
              CreatTextFieal(
                  'Tarkibi:', TextInputType.text, 1, InputIngridents),
              CreatTextFieal('Narxi:', TextInputType.number, 1, InputPrice),
              CreatTextFieal(
                  'Tayyorlanish vaqti:', TextInputType.number, 1, InputTime),
              AddPhotoUrl(InputUrl1, 'Rasm1'),
              SizedBox(height: 10),
              AddPhotoUrl(InputUrl2, 'Rasm2'),
              SizedBox(height: 10),
              AddPhotoUrl(InputUrl3, 'Rasm3'),
            ],
          ),
        ),
      ),
    );
  }
}
