// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign_up/data/repos/sing_up_repo.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;

  SignUpCubit(this.signUpRepo) : super(const SignUpState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  emitSignUPStates() async {
    emit(const SignUpState.signUpLoading());

    final response = await signUpRepo.signUp(SignUpRequestBody(
        email: emailController.text,
        gender: 0,
        name: nameController.text,
        password: passwordController.text,
        phone: phoneController.text,
        passwordConfirmation: passwordConfirmationController.text));

    response.when(
      success: (signUpResponse) {
        emit(SignUpState.signUpSuccess(signUpResponse));
      },
      failure: (error) {
        emit(SignUpState.signUpError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
