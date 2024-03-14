
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';

class AnimationSection extends StatelessWidget{
  const AnimationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
            height: 250,
            width: 210,
            child: Lottie.asset(AnimationsApp.cornAnimation)
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Row(
            children: [
              const Text('Welcome to\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
              Text('\nSmartFarm',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kPrimaryColor,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),

        ),
      ],
    );
  }
}