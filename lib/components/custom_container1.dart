// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomContainer1 extends StatelessWidget{
  Icon icon;
  String title;
  String trailing;
  CustomContainer1({super.key,required this.icon,required this.title,required this.trailing});
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
        leading: icon,
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