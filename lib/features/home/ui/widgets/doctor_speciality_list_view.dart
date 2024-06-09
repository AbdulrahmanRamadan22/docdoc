import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: ColorsManager.lightBlue,
                radius: 30.r,
                child: Image.asset(
                  "assets/images/General.png",
                  height: 40.h,
                  width: 40.w,
                ),
              ),
              verticalSpace(12.h),
              Text("General", style: TextStyles.font12darkBlueRegular),
            ],
          ),
        ),
      ),
    );
  }
}
