import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/custom_generator.dart';
import 'package:flutter_course_autumn_2022/main.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Stream<DateTime> realTime = CustomGenerator().generateRealTimeDate();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: FutureBuilder<int>(
              future: CustomGenerator().calculateDate(
                90,
              ),
              builder: (ctxt, snapshot) {
                if (snapshot.hasData) {
                  return Center(
                    child: Text('took ${snapshot.data} to find 90000'),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text('error occured'),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
        Container(
          child: StreamBuilder<DateTime>(
            stream: realTime,
            builder: (
              BuildContext context,
              AsyncSnapshot<DateTime> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.active ||
                  snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  
                  return Text(snapshot.data.toString(),
                      style: const TextStyle(color: Colors.red, fontSize: 40));
                } else {
                  return const Text('Empty data');
                }
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            },
          ),
        )
      ],
    ));
  }
}
