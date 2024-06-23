import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plants_view.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/core/utils/styles_app.dart';


class CustomPlantContainer extends StatelessWidget{
  const CustomPlantContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, CustomPlantsView.id);
      },
      child: Container(
        width: 270,
        height: 100,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Lottie.asset(AnimationsApp.customPlantAnimation),
            Text('Custom Plant',
              style: StylesApp.styleBold20(context)
            ),
          ],
        ),
      ),
    );
  }

}