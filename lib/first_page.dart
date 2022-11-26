import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/animated_container_model.dart';
import 'package:flutter_course_autumn_2022/location_generator.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder<double>(
                stream: LocationGenerator().generateAngle(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Stack(
                      children: [
                        Transform.rotate(
                            angle: (snapshot.data ?? 0)/2,
                            child: Container(
                              width: 10,
                              height: 100,
                              color: Colors.yellow,
                            )),
                            
 Transform.rotate(
                            angle: snapshot.data ?? 0,
                            child: Container(
                              width: 10,
                              height: 100,
                              color: Colors.red,
                            )),
 Transform.rotate(
                            angle: -(snapshot.data ?? 0)/3,
                            child: Container(
                              width: 10,
                              height: 100,
                              color: Colors.blue,
                            )),
                      ],
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
            StreamBuilder<AnimatedContainerModel>(
              stream: LocationGenerator().modelGenerator(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOutQuart,
                    width: snapshot.data?.width.toDouble(),
                    height: snapshot.data?.height.toDouble(),
                    alignment: snapshot.data?.alignmnet,
                    color: snapshot.data?.color,
                    child: const FlutterLogo(),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            StreamBuilder<int>(
                stream: LocationGenerator().randomLocator(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Alignment? alignment;
                    if ((snapshot.data ?? 0) < 10) {
                      alignment = Alignment.center;
                    } else if ((snapshot.data ?? 0) < 20) {
                      alignment = Alignment.topCenter;
                    } else {
                      alignment = Alignment.bottomCenter;
                    }
                    return AnimatedAlign(
                        alignment: alignment,
                        child: FlutterLogo(),
                        duration: Duration(seconds: 4),
                        curve: Curves.easeInQuad);
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
