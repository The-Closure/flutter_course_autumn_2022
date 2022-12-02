import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, _) => GestureDetector(
          onLongPress: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FirstPage(),
              ),
            );
          },
          child: Dismissible(
            // direction: DismissDirection.vertical,
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('this is archive obkj')),
                );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FirstPage(),
                  ),
                );
              }
            },
            secondaryBackground: Container(
              padding: const EdgeInsetsDirectional.only(end: 20),
              color: Colors.orange,
              child: const Icon(
                Icons.archive,
                color: Colors.white,
              ),
              alignment: Alignment.centerRight,
            ),
            background: Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              color: Colors.green,
              child: Icon(
                Icons.call,
                color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
            ),
            key: ObjectKey(
              0,
            ),
            child: Container(
              color: Colors.redAccent,
              height: 100,
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
