import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/models/brand_data.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/brand_card.dart';

class SucceedBrandsList extends StatelessWidget {
  List<BrandData> data;
  SucceedBrandsList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => BrandCard(brand: data[index]),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
