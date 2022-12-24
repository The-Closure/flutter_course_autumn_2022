import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/models/brand_data.dart';

class BrandCard extends StatelessWidget {
  BrandData brand;
  BrandCard({Key? key, required this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        shadowColor: Colors.grey,
        elevation: 10,
        borderOnForeground: true,
        child: Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 4,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset('assets/brandTest.png',
                width: MediaQuery.of(context).size.width / 3,
                height: 100,
                fit: BoxFit.fill),
            ListTile(
              title: Text(
                 '',
                style: TextStyle(fontSize: 8),
              ),
              subtitle: Text(
                '',
                style: TextStyle(fontSize: 8),
              ),
              trailing: Text(
                '',
                style: TextStyle(fontSize: 8),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
