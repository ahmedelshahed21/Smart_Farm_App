import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class CustomPlantDataCard extends StatelessWidget{
  const CustomPlantDataCard({super.key, required this.name,required this.icon,required this.iconColo, required this.value, required this.unity});

  final String name;
  final double value;
  final String unity;
  final IconData icon;
  final Color iconColo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon,
                size: 30,
                color: iconColo,
              ),
              const SizedBox(width: 5),
              Text(name,
                style: const TextStyle(
                    fontSize: 16,
                    letterSpacing: 2,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('${value}',
                style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(width: 5,),
              Text(unity,
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                    color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
          // Text('every day',
          //   style: TextStyle(
          //     color: Colors.white.withOpacity(0.6),
          //   ),
          // ),
        ],
      ),
    );
  }
}