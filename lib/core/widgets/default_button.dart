import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class DefaultButton extends StatelessWidget{
  final String buttonName;
  final VoidCallback onTapped;
  final Color? borderColor;
  const DefaultButton({super.key,required this.buttonName,required this.onTapped,this.borderColor});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapped,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          side: BorderSide(
              width: 1, color: borderColor??kPrimaryColor
          ),
          padding: const EdgeInsets.only(top:10,bottom:10,right: 50,left: 50)
      ),
      child: Text(buttonName,
        style: const TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.w900,
          fontSize: 20,
          letterSpacing: 3.5,
        ) ,
      ),
    );
  }
}