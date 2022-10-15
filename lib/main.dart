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

  brands.insert(1, 'ferrari');
  print(brands[1]);
  brands.insertAll(5, ['java', 'flutter', 'cs']);
  print(brands[7]);
  String jointBrands = brands.join(',');
  print(jointBrands);
  List<String> firstCharBrands = brands.map((e) => e[0]).toList();
  firstCharBrands.forEach((element) => print(element));
  print(brands.length);
  brands.remove("tesla");
  print(brands.length);
  brands.removeAt(1);
  print(brands.length);
  brands.removeLast();
  print(brands.length);
  brands.removeRange(2, 4);
  print(brands.length);
  brands.removeWhere((element) => element == 'bmw');
  print(brands.length);
  brands.addAll(brands);
  brands.addAll(brands);
  brands.addAll(brands);
  print(brands.length);
  brands.replaceRange(4, 7, ['mazda', 'bmw', 'audi', 'dart']);
  print(brands.length);
  print(brands);
  brands.shuffle();
  print(brands);
  brands.singleWhere((element) => element == 'bmw'); // will throws Exception
  List<String> skippedBrands = brands.skip(20).toList();
  print(skippedBrands);
  brands.insert(20, 'ferrarimazdaaudi');
  List<String> skippedWhileBrands =
      brands.skipWhile((value) => value.length <= 'ferrari'.length).toList();
  print(skippedWhileBrands);
  brands.sort(
    (a, b) => a.runes.last - b.runes.last,
  );
  print(brands);
  List<String> tookBrands = brands.take(4).toList();
  print(tookBrands);
  List<String> tookWhileBrands =
      brands.takeWhile((value) => value.length < 10).toList();
  print(tookWhileBrands);
  Set<String> brandsSet = brands.toSet();
  print(brandsSet);
  List<String> longBrands =
      brands.where((element) => element.length > 7).toList();
  print(longBrands);

  // brands.clear();
}
