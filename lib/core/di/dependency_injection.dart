import 'package:dio/dio.dart';
import 'package:flutter_advanced_courese/core/networking/api_services.dart';
import 'package:flutter_advanced_courese/core/networking/dio_factory.dart';
import 'package:flutter_advanced_courese/features/login/data/repositories/login_repositories.dart';
import 'package:flutter_advanced_courese/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_courese/features/sign_up/data/repositories/sign_up_repositories.dart';
import 'package:flutter_advanced_courese/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(() => dio);

  // ApiServices
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(getIt<Dio>()));

  // LoginRepositories
  getIt.registerLazySingleton<LoginRepositories>(
    () => LoginRepositories(getIt<ApiServices>()),
  );

  // SignUpRepositories
  getIt.registerLazySingleton<SignUpRepositories>(
    () => SignUpRepositories(getIt<ApiServices>()),
  );

  // LoginCubit
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt<LoginRepositories>()),
  );

  // SignUpCubit
  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(getIt<SignUpRepositories>()),
  );
}
