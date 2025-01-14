import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateEventsProvider extends ChangeNotifier {
  List<String> eventsCategory = [
    "bookClub",
    "sports",
    "holiday",
    "metting",
    "gaming",
    "eating",
    "exhibition",
    "workshop",
    "birth_day",
  ];
  int selectedCategory = 0;

  String get selectedCategoryName => eventsCategory[selectedCategory];

  void changeCategory(index) {
    selectedCategory = index;
    notifyListeners();
  }

  /// for Selected Date in create event
  DateTime selectedDate = DateTime.now();

  void changeDate(DateTime date) {
    selectedDate = date;
    notifyListeners();
  }

  ThemeMode themeMode = ThemeMode.light;

  changeThemeMode(ThemeMode mode) {
    themeMode = mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  // changeIconColor() {
  //   bool changeColor = true;
  //   changeColor =!changeColor;
  //
  //   List<Icon> icons =  [
  //     Icon(
  //       FontAwesomeIcons.bookOpen,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.bicycle,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.piggyBank,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.database,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.gamepad,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.bowlFood,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.expand,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.upwork,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //     Icon(
  //       FontAwesomeIcons.cakeCandles,
  //       color: changeColor ? Colors.white : Colors.red,
  //     ),
  //   ];
  //   notifyListeners();
  // }
  List<Icon> icons = const [
    Icon(
      FontAwesomeIcons.bookOpen,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.bicycle,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.piggyBank,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.database,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.gamepad,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.bowlFood,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.expand,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.upwork,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.cakeCandles,
      color: Colors.white,
    ),
  ];
}
