import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/home/data/models/send_plant_data_model.dart';
import 'package:smart_farm/Features/home/presentation/manager/send_data_cubit/send_plant_data_state.dart';
import 'package:http/http.dart' as http;

class SendPlantDataCubit extends Cubit<SendPlantDataState>{
  SendPlantDataCubit():super(SendPlantDataInitialState());
  final String _baseUrl='https://api.thingspeak.com/update.json?api_key=69CA55GKQIE1X904';

  Future<void> sendPlantData(String moisture,temp,humidity)async{
    emit(SendPlantDataLoadingState());
    final Map<String, dynamic> data = SendPlantDataModel(moisture: moisture, temp: temp, humidity: humidity).toJson();
    final response = await http.post(Uri.parse(_baseUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data)
    );

    if(response.statusCode==200){
      emit(SendPlantDataSuccess());
      print('SendPlantDataSuccess');
      print(response.statusCode);
      print(response.body.toString());
    }
    else if(response.statusCode>=401){
      emit(SendPlantDataFailure());
      print('SendPlantDataFailure');
      print(response.body.toString());
      print(response.statusCode.toString());
    }
    else{
      emit(SendPlantDataLoadingState());
    }
  }
}