import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/components/plant_action.dart';
import 'package:smart_farm/core/components/return_icon_button.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/core/components/plant_card.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/custom_expansion_tile.dart';
import 'package:smart_farm/features/plant/presentation/views/widgets/plant_data_section.dart';

class PlantView extends StatelessWidget{
  static String id='PlantView';
  const PlantView({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const ReturnIconButton(),
        actions: [
          PlantCard(
            category: category,
            width: 90,
            height: 50,
            radius: 12.0,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            padding: const EdgeInsets.only(top: 2.0,left: 7.0),
          ),
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.only(right: 8.0,left: 8.0,top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomExpansionTile(content: 'It is a crucial food crop globally.'
                    '\nRich in nutrients, including carbohydrates and proteins. '
                    '\nCultivated in diverse climates worldwide.'),
                const SizedBox(height: 20),
                PlantDataSection(),
                const SizedBox(height: 20,),
                const PlantAction(),
              ],
            ),
          ),
        ),
    );
  }
}





