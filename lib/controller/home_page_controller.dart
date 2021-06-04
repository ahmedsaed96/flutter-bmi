import 'dart:math';

import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier {
  // HomePageController() {
  //   getGender;
  // }
  double _height = 120;
  int _weight = 50;
  int _age = 20;
  bool isMale = true;
  double get getHeight => _height;

  int get getWeight => _weight;
  String _getGender() {
    if (isMale) {
      notifyListeners();
      return 'Male';
    }
    notifyListeners();
    return 'Female';
  }

  String get getGender => _getGender();

  int get getAge => _age;
  void changeGender() {
    if (isMale == true) {
      isMale = false;
      notifyListeners();
    } else {
      isMale = true;
      notifyListeners();
    }
  }

  int getBmi() {
    double bmi = _weight / pow(_height / 100, 2);
    notifyListeners();
    return bmi.round();
  }

  heightFunction(double newHeight) {
    _height = newHeight;
    notifyListeners();
  }

  weightFunction(int newWeight) {
    _weight = newWeight;

    notifyListeners();
  }

  ageFunction(int newAge) {
    _age = newAge;
    notifyListeners();
  }

  void increaseWeight() {
    _weight++;

    notifyListeners();
  }

  void decreaseWeight() {
    if (_weight > 0) {
      _weight--;

      notifyListeners();
    }
  }

  void increaseAge() {
    _age++;
    notifyListeners();
  }

  decreaseAge() {
    if (_age > 0) {
      _age--;
      notifyListeners();
    }
  }
}
