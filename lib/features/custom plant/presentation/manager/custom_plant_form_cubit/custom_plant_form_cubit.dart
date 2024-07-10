import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/custom%20plant/data/models/custom_plant_model.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/manager/custom_plant_form_cubit/custom_plant_form_state.dart';
import 'package:http/http.dart' as http;
import 'package:smart_farm/constants.dart';

class CustomPlantFormCubit extends Cubit<CustomPlantFormState> {

  CustomPlantFormCubit() : super(CustomPlantFormInitialState());
  Future<void> userCustomPlant(String plantName, double watering,
      double temperature, double humidity, double soilHumidity) async{
    emit(CustomPlantFormLoadingState());
    final Map<String, dynamic> data = CustomPlantModel(plantName: plantName, content: plantName, watering: watering, temperature: temperature, humidity: humidity, soilHumidity: soilHumidity).toJson();
    final response = await http.post(
      Uri.parse('$kPlantsUrl/plant'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      print(response.body);
      print(response.statusCode);
      emit(CustomPlantFormSuccess());
    } else if (response.statusCode >= 401) {
      print(response.body);
      print(response.statusCode);
      CustomPlantFormFailure();
    } else {
      emit(CustomPlantFormLoadingState());
    }
  }
  // postRequestWithFile(String url,Map data,File file)async{
  //   var request=http.MultipartRequest("POST",Uri.parse(url));
  //   var length=await file.length();
  //   var stream=http.ByteStream(file.openRead());
  //   var multiPartFile = http.MultipartFile("file",stream,length,filename: basename(file.path));
  //   request.files.add(multiPartFile);
  //   var myRequest=await request.send();
  //   var response=await http.Response.fromStream(myRequest);
  //   if(myRequest.statusCode==200){
  //     return jsonDecode(response.body);
  //   }
  //   else{
  //     print("Error ${myRequest.statusCode}");
  //   }
  // }
}
