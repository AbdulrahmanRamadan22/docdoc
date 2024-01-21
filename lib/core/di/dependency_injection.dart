import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/sign_up/data/repos/sing_up_repo.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

Future <void> setupGetIt() async{
  // Dio & ApiService
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
    getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
    getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

 //signUP
    getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
    getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

}
