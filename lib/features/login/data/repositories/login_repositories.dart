import 'package:flutter_advanced_courese/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_courese/core/networking/api_result.dart';
import 'package:flutter_advanced_courese/core/networking/api_services.dart';
import 'package:flutter_advanced_courese/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_courese/features/login/data/models/login_response.dart';

class LoginRepositories {
  final ApiServices _apiService;

  LoginRepositories(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
