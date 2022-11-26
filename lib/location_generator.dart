import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/animated_container_model.dart';

class LocationGenerator {
  Stream<int> randomLocator() async* {
    while (true) {
      yield Random().nextInt(31);
      await Future.delayed(Duration(seconds: 5));
    }
  }

  Stream<AnimatedContainerModel> modelGenerator() async* {
    while (true) {
      int rand = Random().nextInt(300);
      AnimatedContainerModel animatedContainerModel = AnimatedContainerModel(
          alignmnet: rand > 150 ? Alignment.centerRight : Alignment.centerLeft,
          color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
              Random().nextInt(255), Random().nextInt(10) / 10),
          height: rand,
          width: (rand / 2).toInt());
      yield animatedContainerModel;
      await Future.delayed(Duration(seconds: 3));
    }
  }

  Stream<double> generateAngle() async* {
    double value = 0.0;
    int duration = 10;
    while (true) {
      value = value + 0.1;
      yield value;
      await Future.delayed(Duration(milliseconds: duration++));
    }
  }
}
