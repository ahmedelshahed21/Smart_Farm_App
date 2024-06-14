import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

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
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.75,
                child: Lottie.asset(AnimationsApp.cornAnimation)
            ),
            Text('Welcome to\n\n',
              textAlign: TextAlign.start,
              style: StylesApp.styleBold12(context).copyWith(
                letterSpacing: 3
              )
            ),
          ],
        ),
        FadeTransition(
          opacity: fadingAnimation!,
          child: Text('SmartFarm',
            style: StylesApp.styleBold20(context).copyWith(
              color: kPrimaryColor,
              letterSpacing: 3
            ),
          ),
        ),
      ],
    );
  }
}