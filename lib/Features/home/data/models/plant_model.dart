class PlantModel {
  final String? image;
  final String? plantName;
  final String? content;
  final String? water;
  final String? temp;
  final String? humidity;
  final String? soilHumidity;

  const PlantModel(
      {
      required this.plantName,
      this.content,
      this.image,
      this.water,
      this.temp,
      this.humidity,
      this.soilHumidity});

  factory PlantModel.fromjson(jsonData) {
    return PlantModel(
        image: jsonData['image'],
        plantName: jsonData['name'],
        water: jsonData['watering'],
        temp: jsonData['temperature'],
        humidity: jsonData['humidity'],
        soilHumidity: jsonData['soil_Humidity']);
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
