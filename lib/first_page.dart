import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // SizedBox(
          //   width: double.infinity,
          //   height: 0,
          // ),
          Container(
            alignment: Alignment.center,
            // margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black, width: 10),
              // borderRadius: BorderRadius.circular(180),
              image: DecorationImage(
                  image: AssetImage('assets/space.jpeg'), fit: BoxFit.cover),
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 3,
            // child: Image.asset(
            //   'assets/space.jpeg',
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height / 2,
            //   // opacity: ,
            //   fit: BoxFit.cover,
            // ),
          ),
          Container(
            alignment: Alignment.center,
            // margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black, width: 10),
              // borderRadius: BorderRadius.circular(180),
              image: DecorationImage(
                  image: AssetImage('assets/space.jpeg'), fit: BoxFit.cover),
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.width / 3,
          ),
          Container(
            alignment: Alignment.center,
            // margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black, width: 10),
              // borderRadius: BorderRadius.circular(180),
              image: DecorationImage(
                  image: AssetImage('assets/space.jpeg'), fit: BoxFit.cover),
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 3,
          ),
        ],
      ),
    );
  }
}
