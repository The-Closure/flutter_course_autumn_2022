import 'package:flutter/material.dart';

void main() {
  List<String> brands = ["bmw", "mazda", "audi"];
  print(brands[0]);
  brands.add("bmw");

// brands.forEach((element){print(element);});
  for (var element in brands) {
    print(element);
    element = 'test';
    print(element);
  }

  //brands.addAll(brands);
  brands.addAll(["dart", "tesla"]);
  bool startsWtihT = brands.any((element) {
    return element.startsWith('t');
  });
  print(startsWtihT);
  bool isFlutterExists = brands.contains("flutter");
  print(isFlutterExists);
  bool brandsStartsWithT = brands.every((element) {
    return element.startsWith('t');
  });
  print(brandsStartsWithT);
  brands.fillRange(4, 6, "EMPTY");
  print(brands.elementAt(5));
  String matchedElement = brands.firstWhere((element) {
    return element.startsWith('d');
  });
  print(matchedElement);
  List<String> subBrands = brands.getRange(4, 6).toList();
  subBrands.forEach((element) => print(element));
  int bmwIndex = brands.indexOf("bmw");
  print(bmwIndex);
  int tIndex = brands.indexWhere((element) => element.startsWith('t'));
  print(tIndex);
  // brands.clear();
}
