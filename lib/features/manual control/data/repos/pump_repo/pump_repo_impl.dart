import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_farm/Features/manual%20control/data/models/pump_model.dart';
import 'package:smart_farm/Features/manual%20control/data/repos/pump_repo/pump_repo.dart';
import 'package:smart_farm/constants.dart';

class PumpRepoImpl implements PumpRepo {
  @override
  Future<void> sendPumpCommand(String command) async {
    final url = Uri.parse(kManualControlCommandsUrl);
    final pumpModel = PumpModel(command: command);
    final jsonBody = json.encode(pumpModel.toJson());

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonBody,
      );

      if (response.statusCode == 200) {
        print('Pump is switched successfully');
        print(response.statusCode.toString());
        print(response.body.toString());
      } else {
        print('Failed to switch pump status');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
