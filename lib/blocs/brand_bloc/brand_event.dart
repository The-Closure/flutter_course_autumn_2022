part of 'brand_bloc.dart';

@immutable
abstract class BrandEvent {}

class FetchBrandsEvent extends BrandEvent {
  int? page;
  int? size;
  FetchBrandsEvent({this.page = 0, this.size = 20});
}
