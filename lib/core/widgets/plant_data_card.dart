import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';



class PlantDataCard extends StatelessWidget{
  const PlantDataCard({super.key, required this.name,required this.icon,required this.iconColo, required this.value, required this.unity});
  final String name;
  final String value;
  final String unity;
  final IconData icon;
  final Color iconColo;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 8.0),
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
              Flexible(
                child: FittedBox(
                  child: Text(name,
                    style: StylesApp.styleMedium16(context)
                  ),
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
              Flexible(
                child: FittedBox(
                  child: Text(value,
                    style: StylesApp.styleBold36(context)
                  ),
                ),
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