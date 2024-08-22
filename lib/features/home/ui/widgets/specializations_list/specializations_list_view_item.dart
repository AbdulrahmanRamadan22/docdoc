import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsListViewItem extends StatelessWidget {
  final int itemIndex;

  final SpecializationsData? specializationsData;

  const SpecializationsListViewItem({
    super.key,
    required this.itemIndex,
    this.specializationsData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
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
          Text("${specializationsData?.name ?? 'Specialization'}",
              style: TextStyles.font12darkBlueRegular),
        ],
      ),
    );
  }
}
