

import 'package:flutter/material.dart';

class CustomContainer2 extends StatelessWidget{
  final String image;
  final String title;
  final String trailing;
  final Color imageColor;
  const CustomContainer2({super.key,required this.image,required this.imageColor,required this.title,required this.trailing});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.green.shade300,
          borderRadius: BorderRadius.circular(12)
      ),
      padding: const EdgeInsets.all(8),
      child: ListTile(
        leading: Container(
          height: 32,
          color: Colors.green.shade300,
          child: Image.asset(image,
            color: imageColor,
          ),
        ),
        title: Text(title,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
        ),
        trailing: Text(trailing,
          style: const TextStyle(
              fontSize: 16,
              color: Colors.red
          ),
        ),
      ),
    );
  }
}