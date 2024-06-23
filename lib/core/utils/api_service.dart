import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String _baseUrl='https://6aab-41-46-20-178.ngrok-free.app/api';
  ApiService(this._dio);

  Future<dynamic> get({required String endPoint}) async {
    try {
      final response = await _dio.get("$_baseUrl$endPoint");
      return response.data; // Assuming response.data is a List
    } catch (e) {
      throw e;
    }
  }
  Future<Map<String,dynamic>> post({required String endPoint})async{
    var response = await _dio.post('$_baseUrl$endPoint',

    );
    return response.data;
  }
}