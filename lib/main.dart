import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/second_page.dart';
import 'package:flutter_course_autumn_2022/third_page.dart';

import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        '/second_page': (context) => const SecondPage(),
        '/third_page': (context) => const ThirdPage(),
      },
    );
  }
}
