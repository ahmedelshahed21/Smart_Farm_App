import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget{
   const CustomButton2({Key? key,required this.onTapped, required this.name}) : super(key: key);
    final String name;
    final VoidCallback? onTapped;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: 300,
        height: 60,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.orange.shade400,
        ),
        child: Center(
          child: Text(name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}//