class CustomPlantModel {
  final String? image;
  final String plantName;
  final String content;
  final double watering;
  final double temperature;
  final double humidity;
  final double soilHumidity;

  const CustomPlantModel({
    required this.plantName,
    required this.content,
    this.image,
    required this.watering,
    required this.temperature,
    required this.humidity,
    required this.soilHumidity,
  });

  factory CustomPlantModel.fromJson(Map<String, dynamic> jsonData) {
    return CustomPlantModel(
      image: jsonData["data"]['image'],
      plantName: jsonData["data"]['name'],
      content: jsonData["data"]['name'],
      watering: (jsonData["data"]['watering'] as num).toDouble(),
      temperature: (jsonData["data"]['temperature'] as num).toDouble(),
      humidity: (jsonData["data"]['humidity'] as num).toDouble(),
      soilHumidity: (jsonData["data"]['soil_Humidity'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': plantName,
      'image': image,
      'watering': watering,
      'temperature': temperature,
      'humidity': humidity,
      'soil_Humidity': soilHumidity,
    };
  }
}
