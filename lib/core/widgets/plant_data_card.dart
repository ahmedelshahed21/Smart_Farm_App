import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';



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
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.03),
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
                style: StylesApp.styleMedium16(context)
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
                style: StylesApp.styleBold40(context)
              ),
              const SizedBox(width: 5,),
              Text(unity,
                style: StylesApp.styleMedium16(context).copyWith(
                  color: Colors.white70
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}