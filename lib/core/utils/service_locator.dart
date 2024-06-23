import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:smart_farm/Features/home/data/repos/home_repo_impl.dart';
import 'package:smart_farm/Features/sensors/data/repos/sensors_repo_impl.dart';
import 'package:smart_farm/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<SensorsRepoImpl>(SensorsRepoImpl(getIt.get<ApiService>()));
}