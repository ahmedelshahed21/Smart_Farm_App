import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';


class CustomItem extends StatelessWidget{
  const CustomItem({super.key,required this.customPlantName,this.customPlantImage});
  final String customPlantName;
  final String? customPlantImage;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(right: 10.0,left: 10.0,top: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(customPlantName,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              overflow: TextOverflow.visible,
              fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: customPlantImage!=null ? Image.asset(customPlantImage!,
                  height: 30,
                ) : Container(
                  color: Colors.transparent,
                ),
              ),
              const Icon(Icons.delete,
                color: kItemColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}