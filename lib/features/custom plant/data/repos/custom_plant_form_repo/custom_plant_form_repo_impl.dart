import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_farm/Features/custom%20plant/data/models/custom_plant_model.dart';
import 'package:smart_farm/Features/custom%20plant/data/repos/custom_plant_form_repo/custom_plant_form_repo.dart';
import 'package:smart_farm/constants.dart';

class CustomPlantFormRepoImpl implements CustomPlantFormRepo{

  @override
  Future<void> userCustomPlantForm(String plantName,double watering,double temperature,double humidity,double soilHumidity )async {
    final Map<String,dynamic> data=CustomPlantModel(plantName: plantName, content: plantName, watering: watering, temperature: temperature, humidity: humidity, soilHumidity: soilHumidity).toJson();
    final response=await http.post(Uri.parse('$kPlantsUrl/plant'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {}
    else if (response.statusCode >= 401) {}
    else {}
  }
}