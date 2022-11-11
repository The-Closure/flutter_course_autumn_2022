import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'search',
        child: Icon(
          Icons.search,
          size: 20,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/second_page');
        },
      ),
      // body: SafeArea(
      //   child: Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.height / 2,
      //     color: Colors.green,
      //     child: Column(
      //       // mainAxisAlignment: MainAxisAlignment.center,
      //       // crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text('this example for safe area'),
      //         SizedBox(
      //           width: MediaQuery.of(context).size.width,
      //         ),
      //         RichText(
      //           maxLines: 4,
      //           textAlign: TextAlign.center,
      //           text: const TextSpan(
      //             text:
      //                 'Hello ljasjdll Hello ljasjdllHello ljasjdllHello ljasjdllHello ljasjdllHello ljasjdll',
      //             style: TextStyle(fontSize: 24),
      //             children: <TextSpan>[
      //               TextSpan(
      //                 text: 'bold ',
      //                 style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 26,
      //                 ),
      //               ),
      //               TextSpan(
      //                 text: 'w',
      //                 style:
      //                     TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
      //               ),
      //               TextSpan(text: 'orld!'),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Stack(
      //           fit: StackFit.expand,
      //           children: [
      //             Container(
      //               height: 300,
      //               width: 250,
      //               color: Colors.red,
      //             ),
      //             Container(
      //               height: 200,
      //               width: 200,
      //               color: Colors.yellow,
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
