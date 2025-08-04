import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsConditionText extends StatelessWidget {
  const TermsConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11.sp,
              color: ColorsManager.lightGrey,
            ),
            text: 'By logging, you agree to our',
            children: [
              TextSpan(
                text: '  Terms & Conditions ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: 'PrivacyPolicy.',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
