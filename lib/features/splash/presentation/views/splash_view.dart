import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/Features/login/presentation/views/login_view.dart';
import 'package:smart_farm/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smart_farm/core/utils/assets_app.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Lottie.asset(AnimationsApp.smartFarmSplashAnimation),
        backgroundColor: kPrimaryColor,
        nextScreen: const LoginView(),
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        splashIconSize: 250,
        duration: 5000,
        animationDuration: const Duration(seconds: 3),
      ),
    );
  }
}