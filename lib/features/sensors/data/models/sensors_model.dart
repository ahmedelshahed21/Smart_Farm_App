class SensorModel {
  final double field1;
  final double temp;
  final double field3;

  SensorModel({required this.field1, required this.temp, required this.field3});

  factory SensorModel.fromjson(Map<String, dynamic> jsonData){
    return SensorModel(
        field1: double.parse(jsonData['field1']),
        temp: double.parse(jsonData['field2']),
        field3: double.parse(jsonData['field3']),
    );
  }
}