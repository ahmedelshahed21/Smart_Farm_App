import 'package:flutter/material.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/core/components/plant_card.dart';
import 'package:smart_farm/features/plant/presentation/views/plant_view.dart';

class PlantsListView extends StatelessWidget{
  const PlantsListView({super.key});
  final List<CategoryModel> categories= const[
    CategoryModel(image: 'assets/images/Wheat.jpeg', categoryName: 'Wheat'),
    CategoryModel(image: 'assets/images/Rice.jpg', categoryName: 'Rice'),
    CategoryModel(image: 'assets/images/Cotton.png', categoryName: 'Cotton'),
    CategoryModel(image: 'assets/images/Corn.webp', categoryName: 'Corn'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:12.0,left:18.0,bottom: 18.0),
      child: SizedBox(
        height: 100,
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