import 'package:flutter/material.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plant_data_view.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/widgets/custom_item.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/features/home/data/models/plant_model.dart';

class CustomPlantsView extends StatefulWidget {
  const CustomPlantsView({super.key});

  static String id = 'CustomPlantsView';

  @override
  State<CustomPlantsView> createState() => _CustomPlantsViewState();
}

class _CustomPlantsViewState extends State<CustomPlantsView> {
  static const List<PlantModel> customPlants = [
    PlantModel(plantName: 'watermelon'),
    PlantModel(
        plantName: 'My Cotton',
        image: ImagesApp.cottonImage,
        water: '10.5',
        temp: '5',
        humidity: '7',
        soilHumidity: '3',
        content: 'Ahmed Mohamed El-Shahed'),
    PlantModel(
        plantName: 'My Corn',
        water: '10.5',
        temp: '5',
        humidity: '7',
        soilHumidity: '3',
        content: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Plant',
              style:
                  StylesApp.styleBold20(context).copyWith(color: Colors.white)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green.shade900,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, CustomPlantFormView.id);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: GridView.builder(
              itemCount: customPlants.length,
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                // crossAxisSpacing: 10,
                mainAxisSpacing: 75,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: CustomItem(
                      customPlantName: customPlants[index].plantName!,
                      customPlantImage: customPlants[index].image),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CustomPlantDataView(category: customPlants[index]);
                    }));
                  },
                );
              }),
        ));
  }
}
