import 'dart:async';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/features/home/presentation/views/home_view.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Timer(
        const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
        return HomeView();
      }));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network('https://lottie.host/fe20f305-1120-4acf-a800-50bd4112cd17/6WnogW7lGl.json')

      // SizedBox(
      //   child: DefaultTextStyle(
      //     style: const TextStyle(
      //         fontSize: 30,
      //         color: Colors.green,
      //         fontWeight: FontWeight.bold
      //     ),
      //     child: AnimatedTextKit(
      //       animatedTexts: [
      //         TypewriterAnimatedText('Welcome to'),
      //         TypewriterAnimatedText('SmartFarm App')
      //       ],
      //     ),
      //   ),
      // ),
        ],
      )

    );
  }
}







