import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 10.0),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
              child: Lottie.asset(AnimationsApp.smartFarmSplashAnimation)
          ),
          const SizedBox(height: 8.0),
          Text('SmartFarm',
            style: StylesApp.styleBold20(context).copyWith(
                color: Colors.white,
                letterSpacing: 2
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}