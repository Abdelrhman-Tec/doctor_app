import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageOnboarding extends StatelessWidget {
  const DoctorImageOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: SvgPicture.asset('assets/svgs/vector.svg')),
        Image.asset('assets/svgs/doctor.png'),
        Positioned(
          bottom: 30.h,
          right: 0,
          left: 0,
          child: Container(
            width: double.infinity,
            height: 100.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 50,
                  offset: Offset(1, 10),
                  spreadRadius: 20,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 30.h,
          right: 0,
          left: 0,
          child: Center(
            child: Text(
              'Best Doctor Appointment App',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32.sp,
                color: ColorsManager.mainBlue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
