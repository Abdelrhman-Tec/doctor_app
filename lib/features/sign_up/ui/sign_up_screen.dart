import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/helpers/extensions.dart';
import 'package:flutter_advanced_courese/core/helpers/spacing.dart';
import 'package:flutter_advanced_courese/core/routing/routes.dart';
import 'package:flutter_advanced_courese/core/widgets/custom_button.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/already_have_an_account.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/welcome_back_section.dart';
import 'package:flutter_advanced_courese/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advanced_courese/features/sign_up/ui/widget/sign_up_bloc_listener.dart';
import 'package:flutter_advanced_courese/features/sign_up/ui/widget/sign_up_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 31.w,
                vertical: 80.h,
              ),
              child: Column(
                children: [
                  HeaderAuthSection(
                    title: 'Create Account',
                    subtitle:
                        'Sign up now and start exploring all that our app has to offer. We re excited to welcome you to our community!',
                  ),
                  verticalSpace(20),
                  SignupForm(),
                  verticalSpace(20),

                  CustomButton(
                    buttonName: 'Create Account',
                    onTap: () {
                      validateThenDoSignUp(context);
                    },
                  ),
                  verticalSpace(20),
                  AlreadyHaveAnAccountText(
                    text: 'Log In ',
                    ontap: () => context.pushNamed(Routes.loginScreen),
                  ),
                  SignUpBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoSignUp(BuildContext context) {
  if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
    context.read<SignUpCubit>().emitSignupStates();
  }
}
