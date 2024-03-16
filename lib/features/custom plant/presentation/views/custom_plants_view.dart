import 'package:flutter/material.dart';
import 'package:smart_farm/core/components/return_icon_button.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/widgets/custom_item.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/features/plant/presentation/views/plant_view.dart';

class AddingCustomPlantView extends StatefulWidget{
  const AddingCustomPlantView({super.key});
  static String id='CustomPlantView';
  
  
  

  @override
  State<AddingCustomPlantView> createState() => _AddingCustomPlantViewState();
}

class _AddingCustomPlantViewState extends State<AddingCustomPlantView> {
  @override
  Widget build(BuildContext context) {
    const CategoryModel categoryModel=CategoryModel(plantName: 'Custom',image: ImagesApp.wheatImage);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const ReturnIconButton(),
        title: const Text('Custom Plant',
          style: TextStyle(
            fontWeight: FontWeight.bold
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
            itemCount: 3,
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              // crossAxisSpacing: 10,
              mainAxisSpacing: 75,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: const CustomItem(),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const PlantView(category: categoryModel);
                  }));
                },
              );
            }),
      )
    );
  }
}






