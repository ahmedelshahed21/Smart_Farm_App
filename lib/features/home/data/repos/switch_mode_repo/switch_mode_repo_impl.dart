import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:smart_farm/Features/home/data/models/switch_mode_model.dart';
import 'package:smart_farm/Features/home/data/repos/switch_mode_repo/switch_mode_repo.dart';

class SwitchModeRepoImpl implements SwitchModeRepo{
  final Dio dio;
  SwitchModeRepoImpl(this.dio);
  @override
  Future<void> switchMode(String value) async {
     const url = 'https://api.thingspeak.com/update.<format?api_key=1PPGJQIJ742OVLYE';
    SwitchModeModel data = SwitchModeModel(field1: value);
    String jsonBody = json.encode(data.toJson());

    try {
      final response = await dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: jsonBody,
      );

      if (response.statusCode == 200) {
        print('Mode is Switched successfully');
      } else {
        print('Failed to Switch Mode');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
