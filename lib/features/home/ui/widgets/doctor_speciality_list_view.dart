import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:docdoc/features/home/ui/widgets/specializations_list/specializations_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SpecializationsListViewItem(
          itemIndex: index,
          specializationsData: specializationDataList[index],
        ),
      ),
    );
  }
}
