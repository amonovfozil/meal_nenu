import 'package:meals_menu/Widgets/meals.dart';

class meal {
  final String id;
  final String title;
  final String deskriptions;
  final List<String> ingridents;
  final String categoryID;
  final List<String> urls;
  final double price;
  final double preparedTimes;

  meal({
    required this.id,
    required this.title,
    required this.deskriptions,
    required this.ingridents,
    required this.categoryID,
    required this.urls,
    required this.preparedTimes,
    required this.price,
  });
}

class Meals {
  List<meal> _meals = [
    meal(
        id: 'm1',
        title: "Lavash",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`izda eriydigan, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: [
          ' dudlangan go`sht',
          'pomidor',
          'salat bargi',
          'bodiring',
          'sir'
        ],
        categoryID: 'c1',
        urls: [
          'assets/images/ll1.jpg',
          'assets/images/ll2.jpg',
          'assets/images/ll3.jpg'
        ],
        preparedTimes: 15,
        price: 10),
    meal(
        id: 'm2',
        title: "Burger",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda-juda mazzali, og`izda eriydigan, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: ['go`sht', 'pomidor', 'salat bargi', 'bodiring', 'sir'],
        categoryID: 'c1',
        urls: [
          'assets/images/ff1.jpg',
          'assets/images/ff2.jpg',
          'assets/images/ff.jpg'
        ],
        preparedTimes: 15,
        price: 12.2),
    meal(
        id: 'm3',
        title: "Polov",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`izda eriydigan, Guruchlari yumshoqqina, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: ['go`sht', 'sabzi', 'guruch', 'zigr yogi', 'ziralar'],
        categoryID: 'c2',
        urls: [
          'assets/images/pp1.jpg',
          'assets/images/pp2.jpg',
          'assets/images/pp3.jpg'
        ],
        preparedTimes: 10,
        price: 15),
    meal(
        id: 'm4',
        title: "xonim",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`izda eriydigan, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: [
          'Go`sht',
          '1-sort Qozoq uni',
          'Kartoshka',
          'piyoz',
          'zira'
        ],
        categoryID: 'c2',
        urls: [
          'assets/images/xx1.jpg',
          'assets/images/xx2.jpg',
          'assets/images/xx3.jpg'
        ],
        preparedTimes: 15,
        price: 14),
    meal(
        id: 'm5',
        title: "pizza",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`izda eriydigan, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: [
          'go`sht',
          'pomidor',
          "sir",
          'Dolchin',
          'zamburuq',
          'bodiring',
          'h.k.z'
        ],
        categoryID: 'c3',
        urls: [
          'assets/images/pit1.jpg',
          'assets/images/pit2.jpg',
          'assets/images/pit.jpg'
        ],
        preparedTimes: 15,
        price: 14),
    meal(
        id: 'm6',
        title: "Steck",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`izda eriydigan, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: [' dengiz mahsulotlari', 'Fliye' 'pomidor', 'salat bargi'],
        categoryID: 'c4',
        urls: [
          'assets/images/st1.jpg',
          'assets/images/st2.jpg',
          'assets/images/mm2.jpg'
        ],
        preparedTimes: 20,
        price: 18.5),
    meal(
        id: 'm7',
        title: "Syushi",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`izda eriydigan, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: ['go`sht', 'pomidor', 'Fliye', 'salat bargi', 'bodiring'],
        categoryID: 'c5',
        urls: [
          'assets/images/su1.jpg',
          'assets/images/su2.jpg',
          'assets/images/su3.jpg'
        ],
        preparedTimes: 15,
        price: 14),
    meal(
        id: 'm8',
        title: "Antiqa Salat",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`izda eriydigan, sirlari cho`ziladigan, meyorga yetib pishirligan mol, qo`y, tovuqli go`shtlar. "The Most Delicious..! ',
        ingridents: [
          'Qaynatilgan go`sht',
          'pomidor',
          'salat bargi',
          'bodiring',
          'zamburuq',
          'Simichkayogi'
        ],
        categoryID: 'c6',
        urls: [
          'assets/images/s2.jpg',
          'assets/images/s1.jpg',
          'assets/images/s3.jpg'
        ],
        preparedTimes: 10,
        price: 9.5),
    meal(
        id: 'm9',
        title: "Mevali choy",
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`zingizda ta`mi qoluvchi mevali Qora va Ko`k choylar. "The Most Delicious..! ',
        ingridents: [
          'tabga ko`ra mevalar',
          'limon',
          'Qora choy yoki Ko`k choy',
          'Toza Mineral Suv'
        ],
        categoryID: 'c7',
        urls: [
          'assets/images/choy.jpg',
          'assets/images/choy2.jpg',
          'assets/images/choy3.jpg'
        ],
        preparedTimes: 5,
        price: 5.5),
    meal(
        id: 'm10',
        title: 'Arexli Pishiriq',
        deskriptions:
            'Tanlovda adashmadingiz.Issiqina, juda mazzali, og`zingizda ta`mi qoluvchi mevali,arexli, shokaladli tortlar . "The Most Delicious..! ',
        ingridents: [
          '1-saot Qozoq Uni',
          'Vanelin',
          'Shokolod va mevalar',
          'shakar',
          'yong`oq,',
          'h.k.z'
        ],
        categoryID: 'c8',
        urls: [
          'assets/images/cc3.jpg',
          'assets/images/cc2.jpg',
          'assets/images/cc1.jpg'
        ],
        preparedTimes: 15,
        price: 12),
  ];
  List<meal> _favorite = [];
  void AddNewMeal(String title, String descriptions, List<String> Ingridents,
      List<String> Url, double price, double Time, String CaId) {
    _meals.add(meal(
        id: 'm${_meals.length + 1}',
        title: title,
        deskriptions: descriptions,
        ingridents: Ingridents,
        categoryID: CaId,
        urls: Url,
        preparedTimes: Time,
        price: price));
  }

  void isfavorite(String MealId) {
    final a = _favorite.indexWhere((element) => element.id == MealId);
    if (a < 0) {
      _favorite.add(_meals.firstWhere((meall) => meall.id == MealId));
    } else {
      _favorite.removeWhere((elementt) => elementt.id == MealId);
    }

    print(a);
  }

  List<meal> get Favorite {
    return _favorite;
  }

  List<meal> get list {
    return _meals;
  }
}
