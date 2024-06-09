import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeContainerBlue extends StatelessWidget {
  const HomeContainerBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            height: 167.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                  image: AssetImage("assets/images/home_container_doctor.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and\nschedule with\nnearest doctor",
                  style: TextStyles.font18WhiteMedium,
                ),
                verticalSpace(16.h),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Find Nearby",
                      style: TextStyles.font12MainBlueRegular,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsManager.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 0,
              right:3.w,
              child: Image.asset(
                "assets/images/home_doctor.png",
                height: 220.h,
              )),
        ],
      ),
    );
  }
}
