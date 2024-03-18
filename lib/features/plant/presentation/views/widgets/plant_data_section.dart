import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/widgets/plant_data_card.dart';


class PlantDataSection extends StatelessWidget {
  const PlantDataSection({super.key, this.water,this.temp,this.humidity,this.soilHumidity,});
  final double? water;
  final double? temp;
  final double? humidity;
  final double? soilHumidity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('\t\tData',
          style: TextStyle(
            fontSize: 20,
            //color: kPrimaryColor
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlantDataCard(name: 'Watering',icon: Icons.water_drop_outlined,iconColo: Colors.blue,value: water ?? 22.5, unity: 'L'),
                const SizedBox(height: 5.0),
                PlantDataCard(name: 'Humidity',icon: Icons.water,iconColo: kPrimaryColor,value: 22.22, unity: '%'),
              ],
            ),
            const SizedBox(width: 5.0),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PlantDataCard(name: 'Temperature',icon: Icons.sunny_snowing,iconColo: Colors.orange,value: 22, unity: 'C'),
                  SizedBox(height: 5.0),
                  PlantDataCard(name: 'Soil Humidity',icon: Icons.water,iconColo: Colors.brown,value: 22.4447, unity: '%'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


