import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
            border: Border.all(),
            // borderRadius: const BorderRadius.only(
            //   topLeft: Radius.circular(100),
            //   bottomRight: Radius.elliptical(20, 50),
            // ),
          ),

          // color: Colors.amber,
          alignment: Alignment.center,
          padding: EdgeInsets.all(60),
          margin: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: const Text(
            'this is fist test',
            style: TextStyle(
              // fontSize: MediaQuery.of(context).textScaleFactor ,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
