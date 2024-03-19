class PlantModel {
  final String? image;
  final String plantName;
  final String? content;
  final double? water;
  final double? temp;
  final double? humidity;
  final double? soilHumidity;

  const PlantModel({required this.plantName, this.content, this.image, this.water, this.temp, this.humidity, this.soilHumidity});
}
