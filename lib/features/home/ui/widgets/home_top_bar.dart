import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Abdelrahman!",
              style: TextStyles.font18DarkBlueBold,
            ),
            verticalSpace(2.h),
            Text(
              "How Are you Today?",
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: ColorsManager.moreLighterGray,
          radius: 24.r,
          child: SvgPicture.asset("assets/svgs/notifications.svg"),
        )
      ],
    );
  }
}
