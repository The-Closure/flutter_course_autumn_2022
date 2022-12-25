import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/brand_bloc/brand_bloc.dart';
import 'package:flutter_course_autumn_2022/models/brand_data.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/failed_brands_body.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/home_bottom_bar.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/loading_brands_body.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/succeed_brands_list.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HomeBottomBar(),
        appBar: AppBar(),
        body: BlocConsumer<BrandBloc, BrandState>(
          listener: (context, state) {
            if (state is FailedBrandsState) {
              SnackBar snackBar = SnackBar(content: Text(state.message));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            if (state is LoadingBrandsState) {
              return LoadingBrandsBody();
            } else if (state is SucceedBrandsState) {
              return SucceedBrandsList(data: state.data);
            } else if (state is FailedBrandsState) {
              return FailedBrandsBody();
            } else {
              return Center(
                child: Text('unexpected state'),
              );
            }
          },
        ));
  }
}
