import 'package:bloc/bloc.dart';
import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/features/home/data/repo/home_repo.dart';
import 'package:docdoc/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());

    // final token = await SharedPrefHelper.getSecuredString(
    //     key: "${SharedPrefKeys.userToken}");

    final response = await _homeRepo.getSpecializations(
      token: "Bearer $token",
    );

    response.when(success: (specializationResponseModel) {
      emit(HomeState.specializationsSuccess(specializationResponseModel));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler));
    });
  }
}
