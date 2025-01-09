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

  changeCategory(index) {
    selectedCategory = index;
    notifyListeners();
  }

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
