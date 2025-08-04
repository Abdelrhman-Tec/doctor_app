import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  final String text;
  final Function()? ontap;
  const AlreadyHaveAnAccountText({super.key, this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
              text: 'Already have an account yet? ',
              children: [
                TextSpan(
                  text: text,
                  style: TextStyle(color: ColorsManager.mainBlue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
