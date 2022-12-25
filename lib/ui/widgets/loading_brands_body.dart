import 'package:flutter/material.dart';

class LoadingBrandsBody extends StatelessWidget {
  const LoadingBrandsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
