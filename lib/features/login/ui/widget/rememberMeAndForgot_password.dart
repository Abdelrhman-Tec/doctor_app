import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberMeAndForgotRow extends StatefulWidget {
  const RememberMeAndForgotRow({super.key});

  @override
  State<RememberMeAndForgotRow> createState() => _RememberMeAndForgotRowState();
}

class _RememberMeAndForgotRowState extends State<RememberMeAndForgotRow> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: ColorsManager.mainBlue,
              value: isRememberMe,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
            Text(
              'Remember me',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: ColorsManager.lightGrey,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            print('Forgot Password tapped');
          },
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: ColorsManager.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}