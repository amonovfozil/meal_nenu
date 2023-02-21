import 'package:flutter/cupertino.dart';

class Models {
  final String id;
  final String title;
  final String url;

  Models({required this.id, required this.title, required this.url});
}

class Categories with ChangeNotifier {
  List<Models> _list = [
    Models(id: 'c1', title: 'Fast Food', url: 'assets/images/ff.jpg'),
    Models(id: 'c2', title: 'Milliy Taomlar', url: 'assets/images/pp1.jpg'),
    Models(id: 'c3', title: 'Italiya taomlari', url: 'assets/images/pit.jpg'),
    Models(id: 'c4', title: 'Europpa taomlari', url: 'assets/images/mm2.jpg'),
    Models(id: 'c5', title: 'Dengiz mahsuloti', url: 'assets/images/ca.jpg'),
    Models(id: 'c6', title: 'Salatlar', url: 'assets/images/ss.jpg'),
    Models(id: 'c7', title: 'Ichimliklar', url: 'assets/images/dd.jpg'),
    Models(id: 'c8', title: 'Disertlar', url: 'assets/images/ca2.jpg'),
  ];

  List<Models> get Categorylists {
    return _list;
  }
}
