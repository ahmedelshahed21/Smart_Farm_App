import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/plant_action.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/custom_expansion_tile.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/plant_data_section.dart';
import 'package:smart_farm/screens/manual_control_view.dart';
import 'package:smart_farm/screens/percentages_view.dart';

class PlantView extends StatelessWidget{
  static String id='PlantView';
  const PlantView({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [PlantCard(category: category, width: 80, height: 50, radius: 12.0, fontSize: 14.0, fontWeight: FontWeight.w600, padding: const EdgeInsets.only(top: 2.0,left: 7.0),),]
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:12.0),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              const CustomExpansionTile(
                   content: 'It is a crucial food crop globally.'
                   '\nRich in nutrients, including carbohydrates and proteins. '
                   '\nCultivated in diverse climates worldwide.'
              ),
              const Expanded(child: SizedBox()),
              const PlantDataSection(water: 25),
              const Expanded(child: SizedBox()),
              PlantAction(
                onPressedManualButton: (){
                  Navigator.pushNamed(context, ManualControlView.id);
                },
                onPressedAutomaticButton: (){
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





