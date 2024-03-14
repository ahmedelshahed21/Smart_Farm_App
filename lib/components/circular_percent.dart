import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercent extends StatelessWidget {

  final double percentage;
  final double? percentageFontSize;
  final Color progressColor;
  final String name;
  final double? nameFontSize;
  final String? measruingUnit;
  final double? measruingUnitFontSize;
  final double? radius;
  final double? lineWidth;


  const CircularPercent({super.key,required this.name,required this.percentage,required this.progressColor,this.measruingUnit, this.radius, this.lineWidth, this.nameFontSize, this.percentageFontSize, this.measruingUnitFontSize});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 4000,
      startAngle: 0,
      radius: radius ?? 50,
      percent: percentage,
      lineWidth: lineWidth ?? 7,
      backgroundColor: Colors.transparent,
      progressColor: progressColor,
      circularStrokeCap: CircularStrokeCap.round,
      header: Text(name,
        style: TextStyle(
            fontSize: nameFontSize ?? 24,
            color: Colors.white
        ),
      ),
      center:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${(percentage*100).toInt()} ',
            style: TextStyle(
                fontSize: percentageFontSize ?? 28,
                fontWeight: FontWeight.bold,
                color: Colors.green
            ),
          ),
          Text(measruingUnit ?? '%',
            style: TextStyle(
                fontSize: measruingUnitFontSize ?? 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}