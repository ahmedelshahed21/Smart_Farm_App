import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/plant_action.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';
import 'package:smart_farm/features/home/data/models/plant_model.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/custom_expansion_tile.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/plant_data_section.dart';
import 'package:smart_farm/views/manual_control_view.dart';
import 'package:smart_farm/views/percentages_view.dart';

class CustomPlantDataView extends StatelessWidget{
  static String id='CustomPlantView';
  const CustomPlantDataView({super.key, required this.category});
  final PlantModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            PlantCard(category: category, width: 80, height: 50, radius: 12.0, fontSize: 14.0, fontWeight: FontWeight.w600, padding: const EdgeInsets.only(top: 5.0,left: 2.0),),]
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.07),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            CustomExpansionTile(title: 'Notes',content: category.content),
            const Expanded(child: SizedBox()),
            PlantDataSection(water: category.water,temp: category.temp,humidity: category.humidity,soilHumidity: category.soilHumidity,),
            const Expanded(child: SizedBox()),
            PlantAction(
              onPressedCustomizeButton: (){
                Navigator.pushNamed(context, ManualControlView.id);
              },
              onPressedSensorReadings: (){
                Navigator.pushNamed(context, PercentagesView.id);
              },
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}





