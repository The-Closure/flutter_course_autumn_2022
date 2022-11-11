import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Hero(
              tag: 'space',
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ThirdPage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/space.jpeg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),
            ),
            OutlinedButton(
              child:
                  //  Text(
                  //   'back',
                  //   style: TextStyle(fontSize: 50),
                  // ),
                  SizedBox(
                child: Icon(
                  Icons.backspace_outlined,
                ),
                height: 100,
                width: 100,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.blue,
                  width: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
