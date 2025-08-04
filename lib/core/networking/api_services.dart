import 'package:dio/dio.dart';
import 'package:flutter_advanced_courese/core/networking/api_constants.dart';
import 'package:flutter_advanced_courese/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_courese/features/login/data/models/login_response.dart';
import 'package:flutter_advanced_courese/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:flutter_advanced_courese/features/sign_up/data/model/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signUpEndpoint)
  Future<SignUpResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
