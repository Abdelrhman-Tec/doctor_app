import 'package:flutter_advanced_courese/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_courese/core/networking/api_result.dart';
import 'package:flutter_advanced_courese/core/networking/api_services.dart';
import 'package:flutter_advanced_courese/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:flutter_advanced_courese/features/sign_up/data/model/sign_up_response.dart';

class SignUpRepositories {
  final ApiServices _apiService;

  SignUpRepositories(this._apiService);

  Future<ApiResult<SignUpResponse>> signUp(
    SignupRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
