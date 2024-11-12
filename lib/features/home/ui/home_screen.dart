import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/home_container_blue.dart';
import 'package:docdoc/features/home/ui/widgets/home_top_bar.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
        width: double.infinity,
        child: Column(
          children: [
            HomeTopBar(),
            HomeContainerBlue(),
            verticalSpace(24.h),
            DoctorSpecialitySeeAll(),
            verticalSpace(16.h),
            Expanded(
              child: Column(
                children: [
                  SpecializationsBlocBuilder(),
                  verticalSpace(16.h),
                  DoctorsListView(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
