import 'package:flutter/material.dart';

import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: Color.fromARGB(156, 238, 56, 56),

        textTheme: TextTheme(
          subtitle1: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
        ),
        // scaffoldBackgroundColor: Colors.black12,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          actionsIconTheme: IconThemeData(size: 25, color: Colors.blue),
          centerTitle: true,
          elevation: 3,
        ),
        drawerTheme: DrawerThemeData(backgroundColor: Colors.white60),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0,
          disabledElevation: 100,
        ),
      ),
      home: const FirstPage(),
    );
  }
}
