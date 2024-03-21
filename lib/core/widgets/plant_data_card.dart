import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class PlantDataCard extends StatelessWidget{
  const PlantDataCard({super.key, required this.name,required this.icon,required this.iconColo, required this.value, required this.unity});

  final String name;
  final double value;
  final String unity;
  final IconData icon;
  final Color iconColo;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      // height: MediaQuery.of(context).size.height*0.16,
      // width: MediaQuery.of(context).size.width*width!,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kItemColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('${value.round()}',
                style: const TextStyle(
                    fontSize: 40,
                    letterSpacing: 2,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(width: 5,),
              Text(unity,
                style: const TextStyle(
                    fontSize: 16,
                    letterSpacing: 2,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}