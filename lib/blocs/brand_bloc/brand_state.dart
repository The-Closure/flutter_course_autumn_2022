part of 'brand_bloc.dart';

@immutable
abstract class BrandState {}

class BrandInitial extends BrandState {}

class EmptyBrandsState extends BrandState {}

class LoadingBrandsState extends BrandState {}

class SucceedBrandsState extends BrandState {
  final List<BrandData> data;
  SucceedBrandsState(this.data);
}

class FailedBrandsState extends BrandState {
  final String message;
  FailedBrandsState(this.message);
}


