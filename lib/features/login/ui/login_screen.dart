import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/helpers/extensions.dart';
import 'package:flutter_advanced_courese/core/helpers/spacing.dart';
import 'package:flutter_advanced_courese/core/routing/routes.dart';
import 'package:flutter_advanced_courese/core/widgets/custom_button.dart';
import 'package:flutter_advanced_courese/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/already_have_an_account.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/email_and_password.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/login_bloc_listener.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/terms_condition_text.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/welcome_back_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 31.w,
              vertical: 80.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderAuthSection(
                  title: 'Welcome Back',
                  subtitle:
                      'We re excited to have you back, can t wait to see what you ve been up to since you last logged in.',
                ),
                Column(
                  children: [
                    EmailAndPassword(),
                    verticalSpace(20),
                    CustomButton(
                      buttonName: 'Login',
                      onTap: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(20),
                    TermsConditionText(),
                    verticalSpace(40),
                    AlreadyHaveAnAccountText(
                      ontap: () => context.pushNamed(Routes.signUpScreen),
                      text: 'Sign Up ',
                    ),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
