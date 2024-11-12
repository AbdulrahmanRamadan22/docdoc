import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsSuccess: (specializationResponseModel) {
            var specializationDataList =
                specializationResponseModel.specializationDataList;
            return SpecialityListView(
              specializationDataList: specializationDataList ?? [],
            );
          },
          specializationsError: (errorHandler) {
            return Container(
              child: Text(errorHandler.apiErrorModel.message.toString()),
            );
          },
          specializationsLoading: () {
            return Container(
              child: CircularProgressIndicator(),
            );
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
