import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/features/home/presentation/views/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget{
  const CategoriesListView({super.key});
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
            itemBuilder: (context,index) => CategoryCard(category: categories[index])
        ),
      ),
    );
  }

}