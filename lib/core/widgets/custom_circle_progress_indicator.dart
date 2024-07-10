import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class CustomCircularProgressIndicator extends StatelessWidget{
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: kPrimaryColor,
      backgroundColor: Colors.greenAccent,
    );
  }
}