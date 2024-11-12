// ignore: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/helpers/shared_pref_helper.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));
    response.when(success: (loginResponse) async {
      await saveUserToken(
          token: loginResponse.userData?.token.toString() ??
              " not save user token");

      token = await SharedPrefHelper.getSecuredString(
          key: "${SharedPrefKeys.userToken}");

      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message.toString()));
    });
  }
}

Future<void> saveUserToken({required String token}) async {
  SharedPrefHelper.saveSecuredString(
    key: '${SharedPrefKeys.userToken}',
    value: token,
  );

  // token = SharedPrefHelper.getSecuredString(key: "${SharedPrefKeys.userToken}");
}
