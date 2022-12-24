import 'package:bloc/bloc.dart';
import 'package:flutter_course_autumn_2022/models/brand_data.dart';
import 'package:flutter_course_autumn_2022/services/brand_service.dart';
import 'package:meta/meta.dart';

part 'brand_event.dart';
part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  BrandService brandService;
  BrandBloc(this.brandService) : super(BrandInitial()) {
    on<FetchBrandsEvent>((event, emit) async {
      emit(LoadingBrandsState());
      try {
        List<BrandData> data =
            await brandService.getAllBrands(event.page!, event.size!);
        if (data.length == 0)
          emit(EmptyBrandsState());
        else
          emit(SucceedBrandsState(data));
      } catch (e) {
        emit(FailedBrandsState(
            e.toString().substring(e.toString().indexOf(':') + 1)));
      }
    });
  }
}
