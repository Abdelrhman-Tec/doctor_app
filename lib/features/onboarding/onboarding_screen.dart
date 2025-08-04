import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/helpers/extensions.dart';
import 'package:flutter_advanced_courese/core/routing/routes.dart';
import 'package:flutter_advanced_courese/features/onboarding/widgets/appointmentDescriptionText.dart';
import 'package:flutter_advanced_courese/features/onboarding/widgets/doctor_image_onboarding.dart';
import 'package:flutter_advanced_courese/features/onboarding/widgets/doctor_logo_onboarding.dart';
import 'package:flutter_advanced_courese/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
              left: 20.w,
              right: 20.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DoctorLogoOnboarding(),
                SizedBox(height: 100.h),
                const DoctorImageOnboarding(),
                AppointmentDescriptionText(),
                SizedBox(height: 30.h),
                GetStartedButton(
                  onTap: () => context.pushNamed(Routes.loginScreen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
