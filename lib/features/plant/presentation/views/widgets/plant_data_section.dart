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
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PlantDataCard(
                      name: 'Watering',
                      icon: Icons.water_drop_outlined,
                      iconColo: Colors.blue,
                      value: water ?? 0,
                      unity: 'L'
                  ),
                  const SizedBox(height: 5.0),
                  PlantDataCard(name: 'Humidity',
                      icon: Icons.water,
                      iconColo: kPrimaryColor,
                      value: humidity?? 69.1,
                      unity: '%'
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5.0),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PlantDataCard(name: 'Temperature',
                      icon: Icons.sunny_snowing,
                      iconColo: Colors.orange,
                      value: temp ?? 17.5,
                      unity: 'C'
                  ),
                  const SizedBox(height: 5.0),
                  PlantDataCard(name: 'Soil Humidity',
                      icon: Icons.water,
                      iconColo: Colors.brown,
                      value: soilHumidity ?? 22,
                      unity: '%'
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


