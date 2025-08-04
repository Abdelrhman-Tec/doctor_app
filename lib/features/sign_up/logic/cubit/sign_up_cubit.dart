import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/networking/api_result.dart';
import 'package:flutter_advanced_courese/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:flutter_advanced_courese/features/sign_up/data/repositories/sign_up_repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepositories _signUpRepositories;
  SignUpCubit(this._signUpRepositories) : super(SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepositories.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignUpState.success(signupResponse));
      },
      failure: (error) {
        emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
