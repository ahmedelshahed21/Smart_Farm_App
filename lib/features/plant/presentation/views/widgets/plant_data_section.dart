import 'package:flutter/material.dart';
import 'package:smart_farm/core/components/custom_plant_data_card.dart';

class PlantDataSection extends StatelessWidget {
  const PlantDataSection({super.key, this.water,this.temp,this.humidity,this.soilHumidity,});
  final double? water;
  final double? temp;
  final double? humidity;
  final double? soilHumidity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CustomPlantDataCard(name: 'Watering',icon: Icons.water_drop_outlined,iconColo: Colors.blue,value: water ?? 22.5, unity: 'L'),
            SizedBox(height: 10),
            CustomPlantDataCard(name: 'Humidity',icon: Icons.water,iconColo: Colors.white70,value: 22.22, unity: '%'),
          ],
        ),
        SizedBox(width: 5),
        Column(
          children: [
            CustomPlantDataCard(name: 'Temperature',icon: Icons.sunny_snowing,iconColo: Colors.orange,value: 22.5, unity: 'C'),
            SizedBox(height: 10,),
            CustomPlantDataCard(name: 'Soil Humidity',icon: Icons.water,iconColo: Colors.brown,value: 22.7, unity: '%'),
          ],
        ),
      ],
    );
  }
}


