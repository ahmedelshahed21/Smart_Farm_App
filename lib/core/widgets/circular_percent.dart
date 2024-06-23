import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class CircularPercent extends StatelessWidget {

  final double percent;
  final Color progressColor;
  final String name;
  final String? measruingUnit;
  final double? lineWidth;


  const CircularPercent({super.key,required this.name,required this.percent,required this.progressColor,this.measruingUnit, this.lineWidth});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 4000,
      startAngle: 0,
      radius: 45,
      percent: percent,
      lineWidth: lineWidth ?? 6,
      backgroundColor: Colors.transparent,
      progressColor: progressColor,
      circularStrokeCap: CircularStrokeCap.round,
      header: Text(name,
        style: StylesApp.styleSemiBold20(context)
      ),
      center:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${(percent*100).round()} ',
            style: StylesApp.styleBold30(context)
          ),
          Text(measruingUnit ?? '%',
            style: StylesApp.styleBold24(context).copyWith()
          ),
        ],
      ),
    );
  }
}