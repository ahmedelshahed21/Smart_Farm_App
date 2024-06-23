import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String _baseUrlMustafa='https://6aab-41-46-20-178.ngrok-free.app/api';
  final String _baseUrlMansour='https://api.thingspeak.com/channels/2472648/feeds/last.json?api_key=HRV40X4D515PGVFT';
  ApiService(this._dio);

  Future<dynamic> getMustafa({required String endPoint}) async {
    try {
      final response = await _dio.get("$_baseUrlMustafa$endPoint");
      return response.data; // Assuming response.data is a List
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getMansour() async {
    try {
      final response = await _dio.get("$_baseUrlMansour");
      print('response : ${response.statusCode.toString()}');
      return response.data;

    } catch (e) {
      throw e;
    }
  }


  Future<Map<String,dynamic>> post({required String endPoint})async{
    var response = await _dio.post('$_baseUrlMustafa$endPoint',

    );
    return response.data;
  }
}