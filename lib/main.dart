import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/first_page.dart';
import 'package:flutter_course_autumn_2022/second_page.dart';
import 'package:flutter_course_autumn_2022/third_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(),
    );
  }
}
//first page card
//secondPage chips,slider
//third page checkBox,Dialog