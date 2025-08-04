import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/helpers/app_regex.dart';
import 'package:flutter_advanced_courese/core/helpers/spacing.dart';
import 'package:flutter_advanced_courese/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/custom_text_form_field.dart';
import 'package:flutter_advanced_courese/features/login/ui/widget/password_validation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          verticalSpace(25),
          CustomTextFormField(
            hintText: 'email',
            showVisibility: false,
            // ignore: body_might_complete_normally_nullable
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(17),
          CustomTextFormField(
            hintText: 'Password',
            showVisibility: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter your valid password';
              }
              return null;
            },
            controller: context.read<LoginCubit>().passwordController,
          ),
          verticalSpace(15),
          PasswordValidation(
            hasLowercase: hasLowercase,
            hasUppercase: hasUppercase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}

