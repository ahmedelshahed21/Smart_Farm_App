import 'package:flutter/material.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plants_view.dart';
import 'package:smart_farm/Features/home/data/model/plant_model.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/plant_data_section.dart';
import 'package:smart_farm/Features/sensors/presentation/views/sensors_view.dart';
import 'package:smart_farm/core/widgets/custom_expansion_tile.dart';
import 'package:smart_farm/core/widgets/plant_action.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';




class PlantView extends StatelessWidget{
  static String id='PlantView';
  const PlantView({super.key, required this.category});
  final PlantModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PlantCard(
            category: category,
            width: 80,
            height: 50,
            radius: 12.0,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            padding: const EdgeInsets.only(top: 2.0,left: 7.0)),
          ]
      ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.07),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              CustomExpansionTile(
                title: 'OverView',
                content: category.content,
              ),
              const Expanded(child: SizedBox()),
              PlantDataSection(
                  water: category.water,
                  temp: category.temp,
                  humidity: category.humidity,
                  soilHumidity: category.soilHumidity
              ),
              const Expanded(child: SizedBox()),
              PlantAction(
                onPressedCustomizeButton: (){
                  Navigator.pushNamed(context, CustomPlantsView.id);
                },
                onPressedSensorReadings: (){
                  Navigator.pushNamed(context, SensorsView.id);

                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
    );
  }
}




