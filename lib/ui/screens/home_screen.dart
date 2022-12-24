import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/brand_bloc/brand_bloc.dart';
import 'package:flutter_course_autumn_2022/models/brand_data.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/brand_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
