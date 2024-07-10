class SensorModel {
  final double moisture;
  final double temp;
  final double humidity;

  SensorModel({required this.moisture, required this.temp, required this.humidity});

  factory SensorModel.fromjson(Map<String, dynamic> jsonData){
    return SensorModel(
        moisture: double.parse(jsonData['field1']),
        temp: double.parse(jsonData['field2']),
        humidity: double.parse(jsonData['field3']),
    );
  }
}