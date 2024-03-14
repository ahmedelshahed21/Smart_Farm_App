// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularSlider extends StatelessWidget{

  const CircularSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(

        customColors: CustomSliderColors(
            trackColor: Colors.lightGreen,
            progressBarColors: [Colors.lightGreenAccent, Colors.green],
            shadowMaxOpacity: 20.0
        ),
        infoProperties: InfoProperties(topLabelText: 'Water'),
      ),
      initialValue: 50,
      onChange: (double value){},
    );
  }

}