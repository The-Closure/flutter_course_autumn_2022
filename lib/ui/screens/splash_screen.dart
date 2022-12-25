import 'dart:async';
import 'package:flutter_course_autumn_2022/utils/local_storage.dart' as ls;

import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  double size = 0;
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 100),
      () => setState(() {
        size = 100;
      }),
    );
    Timer(
      Duration(seconds: 3),
      () async {
        String? token = await ls.read('TOKEN');
        Navigator.of(context).pushNamedAndRemoveUntil(
          token == null ? '/signin_screen' : '/home_screen',
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 3),
          width: size,
          height: size,
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
