class PlantModel {
  final String? image;
  final String plantName;
  final String? content;
  final String? water;
  final String? temp;
  final String? humidity;
  final String? soilHumidity;

  const PlantModel({required this.plantName, this.content, this.image, this.water, this.temp, this.humidity, this.soilHumidity});
}
