import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';

class AnimationSection extends StatefulWidget {
  const AnimationSection({super.key});

  @override
  State<AnimationSection> createState() => _AnimationSectionState();

}

class _AnimationSectionState extends State<AnimationSection> with SingleTickerProviderStateMixin {

  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1)
    );
    fadingAnimation=Tween<double>(begin: .3,end: 1.2).animate(animationController!);
    animationController?.repeat(reverse: true);
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.height*0.4,
                child: Lottie.asset(AnimationsApp.cornAnimation)
            ),
            const Text('Welcome to\n\n',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),
          ],
        ),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text('SmartFarm',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: kPrimaryColor,
              letterSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }
}