import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

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
        style: StylesApp.styleSemiBold20(context).copyWith(
          fontSize: nameFontSize,
        )
      ),
      center:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${(percentage*100).round()} ',
            style: StylesApp.styleBold30(context).copyWith(
              fontSize: percentageFontSize
            )
          ),
          Text(measruingUnit ?? '%',
            style: StylesApp.styleBold24(context).copyWith(
              fontSize: measruingUnitFontSize
            )
          ),
        ],
      ),
    );
  }
}