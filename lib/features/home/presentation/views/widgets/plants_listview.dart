import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';
import 'package:smart_farm/features/home/data/models/plant_model.dart';
import 'package:smart_farm/features/plant/presentation/views/plant_view.dart';

class PlantsListView extends StatelessWidget{
  const PlantsListView({super.key});
  final List<PlantModel> categories = const [
    PlantModel(image: 'assets/images/Wheat.jpeg', plantName: 'Wheat',content: 'It is a crucial food crop globally.\nRich in nutrients, including carbohydrates and proteins.\nCultivated in diverse climates worldwide.',water: '25-30',temp: '20-30',humidity: '60-70',soilHumidity: '70-80'),
    PlantModel(
        image: 'assets/images/Rice.jpg', plantName: 'Rice',content: 'It is a staple food for billions worldwide.\nThrives in flooded paddies or upland areas.\nProvides essential carbohydrates and nutrients.',water: '25',temp: '28',humidity: '80',soilHumidity: '85'),
    PlantModel(image: 'assets/images/Cotton.png', plantName: 'Cotton',content: 'It is a versatile fiber with diverse applications.\nGrown in warm climates for its soft and breathable fabric.',water: '30',temp: '32',humidity:'65',soilHumidity: '75'),
    PlantModel(image: 'assets/images/Corn.webp', plantName: 'Corn',content: 'Corn, a staple crop in many cultures worldwide.\nThrives in warm climates, cultivated for its versatile uses.\nProvides food, animal feed.',water: '32',temp: '27',humidity: '70',soilHumidity: '80'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:12.0,left:18.0,bottom: 32.0),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context,index) => GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) {
                            return PlantView(category: categories[index]);
                          }));
                },
                child: PlantCard(category: categories[index])
            )
        ),
      ),
    );
  }

}