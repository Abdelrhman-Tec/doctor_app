import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentDescriptionText extends StatelessWidget {
  const AppointmentDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10.sp,
          color: ColorsManager.grey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
