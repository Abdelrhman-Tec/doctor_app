import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorLogoOnboarding extends StatelessWidget {
  const DoctorLogoOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: 141.w,
            height: 38.h,
            child: SvgPicture.asset('assets/svgs/logo.svg'),
          ),
        ),
      ],
    );
  }
}
