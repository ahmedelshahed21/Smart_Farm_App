import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';


class PlantCard extends StatelessWidget{
  const PlantCard({super.key,required this.category,this.width, this.radius, this.fontSize,this.padding, this.fontWeight, this.height});
  final dynamic category;
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
      decoration: category.image != null ? BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('$kImageUrl${category.image}'),
            fit: BoxFit.fill
        ),
        borderRadius: BorderRadius.circular(radius ?? 16),
        color: Colors.greenAccent
      ) : BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: category.image != null ? padding ?? const EdgeInsets.all(12.0) : const EdgeInsets.symmetric(vertical: 12),
        child: Text(category.plantName,
                style: StylesApp.styleBold14(context).copyWith(
                  fontSize: fontSize ?? 20,
                  fontWeight: fontWeight,
                  color: category.image != null ? null : Colors.white,
                )
              ),
      ),
    );
  }


}