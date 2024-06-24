class CustomPlantModel {
  final String? image;
  final String plantName;
  final String content;
  final double water;
  final double temp;
  final double humidity;
  final double soilHumidity;

  const CustomPlantModel(
      {
        required this.plantName,
        required this.content,
        this.image,
        required this.water,
        required this.temp,
        required this.humidity,
        required this.soilHumidity});

  factory CustomPlantModel.fromjson(Map<String, dynamic> jsonData) {
    return CustomPlantModel(
      image: jsonData['image'],
      plantName: jsonData['name'],
      water: (jsonData['watering'] as num).toDouble(),
      temp: (jsonData['temperature'] as num).toDouble(),
      humidity: (jsonData['humidity'] as num).toDouble(),
      soilHumidity: (jsonData['soil_Humidity'] as num).toDouble(),
      content: jsonData['name'],
    );
  }
Map<String, dynamic> toJson() {
  return {
    'name': plantName,
    'image': image,
    'watering': water,
    'temperature': temp,
    'humidity': humidity,
    'soil_Humidity': soilHumidity,
  };
}
}