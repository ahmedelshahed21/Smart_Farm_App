import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/custom%20plant/data/models/custom_plant_model.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plants_view.dart';
import 'package:smart_farm/Features/home/presentation/manager/send_data_cubit/send_plant_data_cubit.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/plant_data_section.dart';
import 'package:smart_farm/core/widgets/custom_expansion_tile.dart';
import 'package:smart_farm/core/widgets/plant_action.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';


class CustomPlantDataView extends StatelessWidget{
  static String id='CustomPlantDataView';
  const CustomPlantDataView({super.key, required this.category});
  final CustomPlantModel category;

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
            PlantDataSection(water: category.watering,temp: category.temperature,humidity: category.humidity,soilHumidity: category.soilHumidity,),
            const Expanded(child: SizedBox()),
            SizedBox(
              height: 60,
              child: PlantAction(
                onPressedCustomizeDataButton: (){
                  Navigator.pushNamed(context, CustomPlantsView.id);
                },
                onPressedConfirmButton: (){
                  BlocProvider.of<SendPlantDataCubit>(context).sendPlantData(
                    category.soilHumidity,
                    category.temperature,
                    category.humidity,
                  );
                },
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}





