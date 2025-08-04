import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/routing/app_router.dart';
import 'package:flutter_advanced_courese/core/routing/routes.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
        initialRoute: Routes.onboardingScreen,
      ),
    );
  }
}
