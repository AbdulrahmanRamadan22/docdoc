import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0.r),
                child: Image.network(
                  "https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvczkwLXBhLTE4NThfMS5wbmc.png",
                  height: 120.h,
                  width: 110.w,
                ),
              ),
              horizontalSpace(16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Farid",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.font18DarkBlueBold),
                    verticalSpace(5.h),
                    Text("Degree | 01124668697",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.font12GrayRegular),
                    verticalSpace(5.h),
                    Text("abod@gmail.com",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.font12GrayRegular),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
