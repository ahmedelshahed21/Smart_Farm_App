import 'package:flutter/material.dart';
import 'package:smart_farm/core/components/plant_action.dart';
import 'package:smart_farm/core/components/return_icon_button.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/core/components/plant_card.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/custom_expansion_tile.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/plant_data_section.dart';
import 'package:smart_farm/screens/manual_control_screen.dart';
import 'package:smart_farm/screens/percentages_screen.dart';

class PlantView extends StatelessWidget{
  static String id='PlantView';
  const PlantView({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const ReturnIconButton(),
        title: PlantCard(category: category, width: 80, height: 50, radius: 12.0, fontSize: 14.0, fontWeight: FontWeight.w600, padding: const EdgeInsets.only(top: 2.0,left: 7.0),),
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              const CustomExpansionTile(
                   content: 'It is a crucial food crop globally.'
                   '\nRich in nutrients, including carbohydrates and proteins. '
                   '\nCultivated in diverse climates worldwide.'
              ),
              const Expanded(child: SizedBox()),
              const PlantDataSection(),
              const Expanded(child: SizedBox()),
              PlantAction(
                onPressedManualButton: (){
                  Navigator.pushNamed(context, ManualControlScreen.id);
                },
                onPressedAutomaticButton: (){
                  Navigator.pushNamed(context, PercentagesScreen.id);

                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
    );
  }
}





