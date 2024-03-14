import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/adding_custom_plant_view.dart';

class CustomPlantContainer extends StatelessWidget{
  const CustomPlantContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AddingCustomPlantView.id);
      },
      child: Container(
        width: 250,
        height: 100,
        margin: const EdgeInsets.only(bottom: 100),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Lottie.asset(AnimationsApp.customPlantAnimation),
            const Text('Custom Plant',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

}