import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/core/widgets/plant_data_card.dart';

class PlantDataSection extends StatelessWidget {
  const PlantDataSection({
    super.key,
    this.water,
    this.temp,
    this.humidity,
    this.soilHumidity,
  });

  final double? water;
  final double? temp;
  final double? humidity;
  final double? soilHumidity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Data',
          style: StylesApp.styleRegular20(context)
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: PlantDataCard(
                  name: 'Watering',
                  icon: Icons.water_drop_outlined,
                  iconColo: Colors.blue,
                  value: water??0,
                  unity: 'L'),
            ),
            const SizedBox(width: 5.0),
            Expanded(
              flex: 9,
              child: PlantDataCard(
                  name: 'Temperature',
                  icon: Icons.sunny_snowing,
                  iconColo: Colors.orange,
                  value: temp ?? 17,
                  unity: 'C'),
            ),
          ],
        ),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: PlantDataCard(
                  name: 'Humidity',
                  icon: Icons.water,
                  iconColo: kPrimaryColor,
                  value: humidity ?? 69.1,
                  unity: '%'),
            ),
            const SizedBox(width: 5.0),
            Expanded(
              flex: 9,
              child: PlantDataCard(
                  name: 'Soil Humidity',
                  icon: Icons.water,
                  iconColo: Colors.brown,
                  value: soilHumidity ?? 22,
                  unity: '%'),
            ),
          ],
        ),
      ],
    );
  }
}
