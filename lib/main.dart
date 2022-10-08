import 'package:flutter/material.dart';

void main() {
  String url = '     http://www.google.com             ';
  print(url);
  url = url.trim();
  print(url);
  String subStr = url.substring(5);
  print(subStr);
  String subEndStr = url.substring(5, 7);
  print(subEndStr);
  bool isprotocol = url.startsWith('http');
  print(isprotocol);
  bool isWebsite = url.endsWith('com');
  print(isWebsite);
  int equation = url.compareTo('httq');
  print(equation);
  bool isGoogle = url.contains('google');
  print(isGoogle);
  int g = url.indexOf('g');
  print(g);
  int lastG = url.lastIndexOf('g');
  print(lastG);
  String doubleAUrl = url.replaceAll('o', 'aa');
  print(doubleAUrl);
  String firstAUrl = url.replaceFirst('o', 'aa');
  print(firstAUrl);
  String facebook = url.replaceRange(11, 14, 'facebook');
  print(facebook);

  String gaogle = url.replaceAllMapped('o', (m) {
    if (m.start % 2 == 0) {
      return 'a';
    } else {
      return 'o';
    }
  });
  print(gaogle);

  url.replaceFirstMapped('goog', (m) {
    if (m.end == '14') {
      return '14';
    } else {
      return '15';
    }
  });
}
