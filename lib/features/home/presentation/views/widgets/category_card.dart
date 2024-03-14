import 'package:flutter/material.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/features/plant/presentation/views/plant_view.dart';

class CategoryCard extends StatelessWidget{
  const CategoryCard({super.key,required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) {
                return PlantView(category: category);
              }));
        },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(category.categoryName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}