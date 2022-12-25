
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/brand_bloc/brand_bloc.dart';

class FailedBrandsBody extends StatelessWidget {
  const FailedBrandsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {
        BlocProvider.of<BrandBloc>(context).add(FetchBrandsEvent());
      },
      child: Text('retry'),
    ));
  }
}
