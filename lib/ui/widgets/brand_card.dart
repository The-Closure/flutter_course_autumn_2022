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
            brand.image == null
                ? Image.asset('assets/brandTest.png',
                    width: MediaQuery.of(context).size.width / 3,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                        'assets/brandTest.png',
                        width: MediaQuery.of(context).size.width / 3,
                        height: 100,
                        fit: BoxFit.fill),
                    height: 100,
                    fit: BoxFit.fill)
                : Image.network(brand.image ?? '',
                    width: MediaQuery.of(context).size.width / 3,
                    height: 100,
                    fit: BoxFit.fill),
            ListTile(
              title: Text(
                brand.name ?? '',
                style: TextStyle(fontSize: 8),
              ),
              subtitle: Text(
                brand.description ?? '',
                style: TextStyle(fontSize: 8),
              ),
              // trailing: Text(
              //   brand.phoneNumber ?? '',
              //   style: TextStyle(fontSize: 8),
              // ),
            )
          ]),
        ),
      ),
    );
  }
}
