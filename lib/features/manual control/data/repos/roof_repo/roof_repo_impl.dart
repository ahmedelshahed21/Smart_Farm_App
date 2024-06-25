import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_farm/Features/manual%20control/data/models/roof_model.dart';
import 'package:smart_farm/Features/manual%20control/data/repos/roof_repo/roof_repo.dart';
import 'package:smart_farm/constants.dart';

class RoofRepoImpl implements RoofRepo {
  @override
  Future<void> sendRoofCommand(String command) async {
    final url = Uri.parse(kManualControlCommandsUrl);
    final roofModel = RoofModel(command: command);
    final jsonBody = json.encode(roofModel.toJson());

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonBody,
      );

      if (response.statusCode == 200) {
        print('Roof is switched successfully');
        print(response.statusCode.toString());
        print(response.body.toString());
      } else {
        print('Failed to switch Roof status');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
