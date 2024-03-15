import 'package:flutter/material.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';

class PlantCard extends StatelessWidget{
  const PlantCard({super.key,required this.category,this.width, this.radius, this.fontSize,this.padding, this.fontWeight, this.height});
  final CategoryModel category;
  final double? width;
  final double? height;
  final double? radius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: height,
      width: width ?? 150,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill
        ),
        borderRadius: BorderRadius.circular(radius ?? 16),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12.0),
        child: Text(category.plantName,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize ?? 20,
                    fontWeight: fontWeight ?? FontWeight.bold
                ),
              ),
      ),
    );
  }
}