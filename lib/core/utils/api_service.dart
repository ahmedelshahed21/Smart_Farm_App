import 'package:dio/dio.dart';
import 'package:smart_farm/constants.dart';

class ApiService {
  final Dio _dio;
  final String _baseUrlMansour='https://api.thingspeak.com/channels/2472648/feeds/last.json?api_key=HRV40X4D515PGVFT';
  ApiService(this._dio);

  Future<dynamic> getMustafa({required String endPoint}) async {
    try {
      final response = await _dio.get("$kMustafaUrl$endPoint");
      return response.data;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getMansour() async {
    try {
      final response = await _dio.get(_baseUrlMansour);
      print('response : ${response.statusCode.toString()}');
      return response.data;

    } catch (e) {
      throw e;
    }
  }


  Future<Map<String,dynamic>> post({required String endPoint})async{
    var response = await _dio.post('$kMustafaUrl$endPoint',
    );
    return response.data;
  }
}