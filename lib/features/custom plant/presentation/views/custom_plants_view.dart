import 'package:flutter/material.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plant_data_view.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/widgets/custom_item.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/features/home/data/models/plant_model.dart';


class AddingCustomPlantView extends StatefulWidget{
  const AddingCustomPlantView({super.key});
  static String id='CustomPlantView';
  @override
  State<AddingCustomPlantView> createState() => _AddingCustomPlantViewState();
}

class _AddingCustomPlantViewState extends State<AddingCustomPlantView> {


  final List<PlantModel> customPlants=[
    const PlantModel(plantName: 'watermelon'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Plant',
          style: TextStyle(
            fontWeight: FontWeight.bold,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade900,
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.pushNamed(context, CustomPlantFormView.id);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,bottom: 10.0),
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
                child: CustomItem(customPlantName: customPlants[index].plantName,customPlantImage: customPlants[index].image),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CustomPlantDataView(category: customPlants[index]);
                  }));
                },
              );
            }),
      )
    );
  }
}






