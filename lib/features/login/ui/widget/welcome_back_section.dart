import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/helpers/spacing.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderAuthSection extends StatelessWidget {
  final String title;
  final String subtitle;
  const HeaderAuthSection({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: ColorsManager.mainBlue,
          ),
        ),
        verticalSpace(8),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: ColorsManager.grey,
          ),
        ),
      ],
    );
  }
}
