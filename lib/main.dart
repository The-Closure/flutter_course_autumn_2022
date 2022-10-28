import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstPage(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
