import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:smart_farm/constants.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<dynamic> getMustafa({required String endPoint}) async {
    try {
      final response = await _dio.get("$kPlantsUrl$endPoint");
      return response.data;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> postMustafa({required String endPoint}) async {
    try {
      final response = await _dio.post("$kPlantsUrl$endPoint");
      log(response.statusCode.toString());
      return response.data;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getMansour() async {
    try {
      final response = await _dio.get(kSensorsUrl);
      print('response : ${response.statusCode.toString()}');
      return response.data;

    } catch (e) {
      throw e;
    }
  }

  // Future<Map<String,dynamic>> post({required String endPoint})async{
  //   var response = await _dio.post('$kMustafaUrl$endPoint',
  //   );
  //   return response.data;
  // }
}