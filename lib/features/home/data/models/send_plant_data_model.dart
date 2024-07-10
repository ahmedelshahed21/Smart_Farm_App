class SendPlantDataModel{
  final double moisture;
  final double temp;
  final double humidity;

  SendPlantDataModel({required this.moisture, required this.temp, required this.humidity});

  // factory SendPlantDataModel.fromjson(Map<String,dynamic>jsonData){
  //   return SendPlantDataModel(
  //       moisture: jsonData['field1'] as String,
  //       temp: jsonData['field2'] as String,
  //       humidity: jsonData['field3'] as String,
  //   );
  // }

  Map<String,dynamic> toJson(){
    return {
      'field1':moisture,
      'field2':temp,
      'field3':humidity,
    };
  }
  
}