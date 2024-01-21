import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routers_string.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_cubit.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_state.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';


class  SignUpBlocListener extends StatelessWidget {
  const  SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpLoading || current is SignUpSuccess || current is SignUpError,
      listener: (context, state) {
        state.whenOrNull(
               signUpLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          signUpSuccess: (data) {
            context.pop();

            context.pushNamed(Routes.homeScreen);
          },
          signUpError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }


  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}